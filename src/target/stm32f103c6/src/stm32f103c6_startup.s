
	.syntax unified
	.cpu cortex-m3
	.fpu softvfp
	.thumb

/*
 * "Reset handler". Will be called first the MCU is launched.
 *
 * For more details, please refer to PM0056 (the programming manual), 2.3.2,
 * "Exception types"
 */
	.global resetIsr
	.section .text.resetIsr
	.type resetIsr, %function
	.align 4
resetIsr:
	bl main

	.section .text.defaultIsrHandler
	.type defaultIsrHandler, %function
	.align 4
defaultIsrHandler:
	b defaultIsrHandler

/*
 * STM32-specific vector table
 *
 * WARNING The content of the vector table has been copied from another project.
 * It is only guaranteed to provide correct values for what is used in the
 * current project. Use discretion when building your own stuff on it.
 */
	.global gStm32VectorTable

	.section .vector_table, "a" /* Allocatable section */, %progbits /* Executable code */
	.type gStm32VectorTable, %object /* Data object */
	.size gStm32VectorTable, .-gStm32VectorTable
gStm32VectorTable:
	.word gMspInitial
	.word resetIsr
	.word NMI_Handler
	.word HardFault_Handler
	.word MemManage_Handler
	.word BusFault_Handler
	.word UsageFault_Handler
	.word 0
	.word 0
	.word 0
	.word 0
	.word SVC_Handler
	.word DebugMon_Handler
	.word 0
	.word PendSV_Handler
	.word SysTick_Handler
	.word WWDG_IRQHandler
	.word PVD_IRQHandler
	.word TAMPER_STAMP_IRQHandler
	.word RTC_WKUP_IRQHandler
	.word FLASH_IRQHandler
	.word RCC_IRQHandler
	.word EXTI0_IRQHandler
	.word EXTI1_IRQHandler
	.word EXTI2_TS_IRQHandler
	.word EXTI3_IRQHandler
	.word EXTI4_IRQHandler
	.word DMA1_Channel1_IRQHandler
	.word DMA1_Channel2_IRQHandler
	.word DMA1_Channel3_IRQHandler
	.word DMA1_Channel4_IRQHandler
	.word DMA1_Channel5_IRQHandler
	.word DMA1_Channel6_IRQHandler
	.word DMA1_Channel7_IRQHandler
	.word ADC1_2_IRQHandler
	.word USB_HP_CAN1_TX_IRQHandler
	.word USB_LP_CAN1_RX0_IRQHandler
	.word CAN1_RX1_IRQHandler
	.word CAN1_SCE_IRQHandler
	.word EXTI9_5_IRQHandler
	.word TIM1_BRK_TIM15_IRQHandler
	.word TIM1_UP_TIM16_IRQHandler
	.word TIM1_TRG_COM_TIM17_IRQHandler
	.word TIM1_CC_IRQHandler
	.word TIM2_IRQHandler
	.word TIM3_IRQHandler
	.word TIM4_IRQHandler
	.word I2C1_EV_IRQHandler
	.word I2C1_ER_IRQHandler
	.word I2C2_EV_IRQHandler
	.word I2C2_ER_IRQHandler
	.word SPI1_IRQHandler
	.word SPI2_IRQHandler
	.word USART1_IRQHandler
	.word USART2_IRQHandler
	.word USART3_IRQHandler
	.word EXTI15_10_IRQHandler
	.word RTC_Alarm_IRQHandler
	.word USBWakeUp_IRQHandler
	.word TIM8_BRK_IRQHandler
	.word TIM8_UP_IRQHandler
	.word TIM8_TRG_COM_IRQHandler
	.word TIM8_CC_IRQHandler
	.word ADC3_IRQHandler
	.word 0
	.word 0
	.word 0
	.word SPI3_IRQHandler
	.word UART4_IRQHandler
	.word UART5_IRQHandler
	.word TIM6_DAC_IRQHandler
	.word TIM7_IRQHandler
	.word DMA2_Channel1_IRQHandler
	.word DMA2_Channel2_IRQHandler
	.word DMA2_Channel3_IRQHandler
	.word DMA2_Channel4_IRQHandler
	.word DMA2_Channel5_IRQHandler
	.word ADC4_IRQHandler
	.word 0
	.word 0
	.word COMP2_IRQHandler
	.word COMP4_IRQHandler
	.word COMP7_IRQHandler
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word USB_HP_IRQHandler
	.word USB_LP_IRQHandler
	.word USBWakeUp_RMP_IRQHandler
	.word 0
	.word 0
	.word 0
	.word 0
	.word FPU_IRQHandler
	.weak NMI_Handler
	.thumb_set NMI_Handler,Default_Handler

/* Defaul values for ISRs */

	.weak NMI_Handler
	.thumb_set NMI_Handler,Default_Handler

	 .weak HardFault_Handler
	.thumb_set HardFault_Handler,Default_Handler

	 .weak MemManage_Handler
	.thumb_set MemManage_Handler,Default_Handler

	 .weak BusFault_Handler
	.thumb_set BusFault_Handler,Default_Handler

	.weak UsageFault_Handler
	.thumb_set UsageFault_Handler,Default_Handler

	.weak SVC_Handler
	.thumb_set SVC_Handler,Default_Handler

	.weak DebugMon_Handler
	.thumb_set DebugMon_Handler,Default_Handler

	.weak PendSV_Handler
	.thumb_set PendSV_Handler,Default_Handler

	.weak SysTick_Handler
	.thumb_set SysTick_Handler,Default_Handler

	.weak WWDG_IRQHandler
	.thumb_set WWDG_IRQHandler,Default_Handler

	.weak PVD_IRQHandler
	.thumb_set PVD_IRQHandler,Default_Handler

	.weak TAMPER_STAMP_IRQHandler
	.thumb_set TAMPER_STAMP_IRQHandler,Default_Handler

	.weak RTC_WKUP_IRQHandler
	.thumb_set RTC_WKUP_IRQHandler,Default_Handler

	.weak FLASH_IRQHandler
	.thumb_set FLASH_IRQHandler,Default_Handler

	.weak RCC_IRQHandler
	.thumb_set RCC_IRQHandler,Default_Handler

	.weak EXTI0_IRQHandler
	.thumb_set EXTI0_IRQHandler,Default_Handler

	.weak EXTI1_IRQHandler
	.thumb_set EXTI1_IRQHandler,Default_Handler

	.weak EXTI2_TS_IRQHandler
	.thumb_set EXTI2_TS_IRQHandler,Default_Handler

	.weak EXTI3_IRQHandler
	.thumb_set EXTI3_IRQHandler,Default_Handler

	.weak EXTI4_IRQHandler
	.thumb_set EXTI4_IRQHandler,Default_Handler

	.weak DMA1_Channel1_IRQHandler
	.thumb_set DMA1_Channel1_IRQHandler,Default_Handler

	.weak DMA1_Channel2_IRQHandler
	.thumb_set DMA1_Channel2_IRQHandler,Default_Handler

	.weak DMA1_Channel3_IRQHandler
	.thumb_set DMA1_Channel3_IRQHandler,Default_Handler

	.weak DMA1_Channel4_IRQHandler
	.thumb_set DMA1_Channel4_IRQHandler,Default_Handler

	.weak DMA1_Channel5_IRQHandler
	.thumb_set DMA1_Channel5_IRQHandler,Default_Handler

	.weak DMA1_Channel6_IRQHandler
	.thumb_set DMA1_Channel6_IRQHandler,Default_Handler

	.weak DMA1_Channel7_IRQHandler
	.thumb_set DMA1_Channel7_IRQHandler,Default_Handler

	.weak ADC1_2_IRQHandler
	.thumb_set ADC1_2_IRQHandler,Default_Handler

	.weak USB_HP_CAN1_TX_IRQHandler
	.thumb_set USB_HP_CAN1_TX_IRQHandler,Default_Handler

	.weak USB_LP_CAN1_RX0_IRQHandler
	.thumb_set USB_LP_CAN1_RX0_IRQHandler,Default_Handler

	.weak CAN1_RX1_IRQHandler
	.thumb_set CAN1_RX1_IRQHandler,Default_Handler

	.weak CAN1_SCE_IRQHandler
	.thumb_set CAN1_SCE_IRQHandler,Default_Handler

	.weak EXTI9_5_IRQHandler
	.thumb_set EXTI9_5_IRQHandler,Default_Handler

	.weak TIM1_BRK_TIM15_IRQHandler
	.thumb_set TIM1_BRK_TIM15_IRQHandler,Default_Handler

	.weak TIM1_UP_TIM16_IRQHandler
	.thumb_set TIM1_UP_TIM16_IRQHandler,Default_Handler

	.weak TIM1_TRG_COM_TIM17_IRQHandler
	.thumb_set TIM1_TRG_COM_TIM17_IRQHandler,Default_Handler

	.weak TIM1_CC_IRQHandler
	.thumb_set TIM1_CC_IRQHandler,Default_Handler

	.weak TIM2_IRQHandler
	.thumb_set TIM2_IRQHandler,Default_Handler

	.weak TIM3_IRQHandler
	.thumb_set TIM3_IRQHandler,Default_Handler

	.weak TIM4_IRQHandler
	.thumb_set TIM4_IRQHandler,Default_Handler

	.weak I2C1_EV_IRQHandler
	.thumb_set I2C1_EV_IRQHandler,Default_Handler

	.weak I2C1_ER_IRQHandler
	.thumb_set I2C1_ER_IRQHandler,Default_Handler

	.weak I2C2_EV_IRQHandler
	.thumb_set I2C2_EV_IRQHandler,Default_Handler

	.weak I2C2_ER_IRQHandler
	.thumb_set I2C2_ER_IRQHandler,Default_Handler

	.weak SPI1_IRQHandler
	.thumb_set SPI1_IRQHandler,Default_Handler

	.weak SPI2_IRQHandler
	.thumb_set SPI2_IRQHandler,Default_Handler

	.weak USART1_IRQHandler
	.thumb_set USART1_IRQHandler,Default_Handler

	.weak USART2_IRQHandler
	.thumb_set USART2_IRQHandler,Default_Handler

	.weak USART3_IRQHandler
	.thumb_set USART3_IRQHandler,Default_Handler

	.weak EXTI15_10_IRQHandler
	.thumb_set EXTI15_10_IRQHandler,Default_Handler

	.weak RTC_Alarm_IRQHandler
	.thumb_set RTC_Alarm_IRQHandler,Default_Handler

	.weak USBWakeUp_IRQHandler
	.thumb_set USBWakeUp_IRQHandler,Default_Handler

	.weak TIM8_BRK_IRQHandler
	.thumb_set TIM8_BRK_IRQHandler,Default_Handler

	.weak TIM8_UP_IRQHandler
	.thumb_set TIM8_UP_IRQHandler,Default_Handler

	.weak TIM8_TRG_COM_IRQHandler
	.thumb_set TIM8_TRG_COM_IRQHandler,Default_Handler

	.weak TIM8_CC_IRQHandler
	.thumb_set TIM8_CC_IRQHandler,Default_Handler

	.weak ADC3_IRQHandler
	.thumb_set ADC3_IRQHandler,Default_Handler

	.weak SPI3_IRQHandler
	.thumb_set SPI3_IRQHandler,Default_Handler

	.weak UART4_IRQHandler
	.thumb_set UART4_IRQHandler,Default_Handler

	.weak UART5_IRQHandler
	.thumb_set UART5_IRQHandler,Default_Handler

	.weak TIM6_DAC_IRQHandler
	.thumb_set TIM6_DAC_IRQHandler,Default_Handler

	.weak TIM7_IRQHandler
	.thumb_set TIM7_IRQHandler,Default_Handler

	.weak DMA2_Channel1_IRQHandler
	.thumb_set DMA2_Channel1_IRQHandler,Default_Handler

	.weak DMA2_Channel2_IRQHandler
	.thumb_set DMA2_Channel2_IRQHandler,Default_Handler

	.weak DMA2_Channel3_IRQHandler
	.thumb_set DMA2_Channel3_IRQHandler,Default_Handler

	.weak DMA2_Channel4_IRQHandler
	.thumb_set DMA2_Channel4_IRQHandler,Default_Handler

	.weak DMA2_Channel5_IRQHandler
	.thumb_set DMA2_Channel5_IRQHandler,Default_Handler

	.weak ADC4_IRQHandler
	.thumb_set ADC4_IRQHandler,Default_Handler

	.weak COMP2_IRQHandler
	.thumb_set COMP2_IRQHandler,Default_Handler

	.weak COMP4_IRQHandler
	.thumb_set COMP4_IRQHandler,Default_Handler

	.weak COMP7_IRQHandler
	.thumb_set COMP7_IRQHandler,Default_Handler

	.weak USB_HP_IRQHandler
	.thumb_set USB_HP_IRQHandler,Default_Handler

	.weak USB_LP_IRQHandler
	.thumb_set USB_LP_IRQHandler,Default_Handler

	.weak USBWakeUp_RMP_IRQHandler
	.thumb_set USBWakeUp_RMP_IRQHandler,Default_Handler

	.weak FPU_IRQHandler
	.thumb_set FPU_IRQHandler,Default_Handler
