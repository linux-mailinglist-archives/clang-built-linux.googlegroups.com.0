Return-Path: <clang-built-linux+bncBDBLP5PQSQLRBFHOZ6BQMGQEZML2FPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECD635BAD9
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:30:29 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id a20sf6136278otd.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 00:30:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618212628; cv=pass;
        d=google.com; s=arc-20160816;
        b=BdycH/gDVkwWoSKNm0AmM9qe5SjRxqkUQPBoKJw76OK3TjO6AuXZoBlbHvaEoP944j
         ngMPiu/NOAv+Aau9mNJ5Lb/JPiddah95yNEDXRa7oXHGpO09ViEPd5QLmeRVnawb3n4d
         2FdohbiwZzFE3FvcfG39PY9DuXFDg4PZ4uFfA2Ge2MMpCBWnHlGwmdEcMTBrDz5WatBM
         366z6FtLM/v7C5DGqk32kzhxIx0iLjeYeprbaamtuvDD9O4BcZbFJEvEbLOiRyj/Jv+k
         /yO6yNdWEPgc665x4GCm31lH2U+WlUTR/gf4/s+5ITPUXY4qHPrdHiK2zRjdGXkxe3x3
         DElg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TiSMtx7olLoQBe4sevuxiEA+QgxJZjbzBoWaz1p9HKw=;
        b=UR1cu+40YYNX9b4gXi3uvFxYI+3z6zDw3ae1nqCtIl8nY4oBrZjOsrFEEmMpO/LyMP
         GVS+Sw5S+7bBAXWYifyzvFAFPslNIRlP4/4i7EAQy/jPC8WA2OhIVyplTExlODwcbrNR
         1F5VRgzfUv+BQDRP7UvUDIj2TfiTSlraiTau+PxSgc8Szn/Ma50oOUsEzOLF4mPGn1iy
         OkSq5MA8Mg6eNulE1CI3dyoMpXXAof+aTwyVyXR0la/mOzX2BIpdHI+hK71vYLhh/giz
         9BXq+atdOUwKrl9c3HLERcYkFwn09DfVW//HE9Jm7+wCEnZhco+k8bYlwIi2X9zL+akG
         j7Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rwwCdvqy;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TiSMtx7olLoQBe4sevuxiEA+QgxJZjbzBoWaz1p9HKw=;
        b=cB+hZxzhN7BYEyCONOykqVxj5Ticp6dQiqCp6GkuKWmzU8B2TvRbS0+5yqJHgAFD25
         SqUP6lwdkMJHojDNrVFKYouITK1A1dh2jkA06PDxIyDpDj5NVm42n5dECN3dJw8EwMd6
         Lyzu0BuieVzdmr/eaOmCvUnos1ujfe9c0BuF1lRVUjJQ7EfUqppsA9lmWEOmDVIg5wnV
         Qrsut6xfFrYg727OO4uQyrG0x90vZX4YuCGdwpuVibBUDCcHVbLFxLRAveW+Axy7TKTW
         g8JUezRJZbdKIeScLVYMDRKxmmBsHSx80wvIIrEsTkP+wgpiuSXdmsoXNHrDVb84CGsc
         IL0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TiSMtx7olLoQBe4sevuxiEA+QgxJZjbzBoWaz1p9HKw=;
        b=UUAlfRCPgdYB7X9B1Wio8x38A28ElQg8f7YODE/FyeL/pr+er/qkinambXSpn5dbiL
         RRbTrZ06nHpKH35gFWa3PuX2IVx4xeGVmsEvM3axjRO5K2eaKD5M5EJgQ/52tJKJL3iL
         AvWfjOfd9jdPx4cjLh5mcldPp586Trz0Cy8H941D+wBVMrhE07uj7x0r5XyXak65YlAE
         y3rXkaga2KaoSretE1HdtKQ/DvtnMxMiUoJZhrZxSYUEl205e0oCzhtK78pXSBUVZnBO
         JO6nJ/TaFCWB1NLldBowJvIMF2HkLFwg8sqjNYrlc0Od36RjP31CvxqV13eST4zg4Qrh
         tkhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TiSMtx7olLoQBe4sevuxiEA+QgxJZjbzBoWaz1p9HKw=;
        b=Dhuhoc9I4LBJ3Eyht5kd1MPX+tZ50hMyLb5pfoEuX99csg3eynxXbC17+K2XiVL0TB
         AJIRZi+Oy+3qfNNT1nFOZm+Vh1CjV7v9dkTfw+cAE+EtjFarpH6mQh/Rlq8aoyePN11o
         RzCmXWddRRhGljbQ2+24b31PjRQ7MzS/e9GhvZNJH61j2FYkKHRrZ1vwQ1b7q1Mi6kCv
         wN0i17obR1VytQ/gmBcl5i1RAsI7FpZu4hJWLY6+KyPMxV8PbEhD276gGXCKKGjulkuz
         gv/m1gi1De+2SDkIC6rL9KDkHCTk48BZ8+lwtGcHlneVjV28wDsV0zttcN2Pn4vthLqz
         EvRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531w3rFflcl9BnwJx0z+L81r53PNywh6OE5sRdaTT5xssqGKr8fc
	u+bLok9IqAYpNnQozwvgTtU=
X-Google-Smtp-Source: ABdhPJyq5fY1YX1ELT6GSk98guseVzdF9yJacq8zzKE8//p2t4Zk5ql4owtQ+pmcb/FiBATquRJSmQ==
X-Received: by 2002:a9d:22a9:: with SMTP id y38mr11823438ota.345.1618212628526;
        Mon, 12 Apr 2021 00:30:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d088:: with SMTP id i8ls125171oor.4.gmail; Mon, 12 Apr
 2021 00:30:28 -0700 (PDT)
X-Received: by 2002:a4a:8247:: with SMTP id t7mr21706274oog.53.1618212628114;
        Mon, 12 Apr 2021 00:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618212628; cv=none;
        d=google.com; s=arc-20160816;
        b=RIRkPV3/A08VBlJxkA3TJDKBG5kqqOYdyGssTR789dszh2AhbkUA41OdZKbEj4UQSl
         ZJbkENHMT6tAT59Tpt09t6bwfO2auRW5eq7IC8Edt8EAAATaSAUY2BDZnbYYxIL2f+O6
         2E+v4RpH6WN+sMqcUxYPEuZdJ+1rjhx97f1/Glc1psL2FUrk+tuRNF+8+ey9vN9B34HE
         nM/22SznuCOrgcFUyS6psCmj+fZrYaUktkaS2NCN5PdzBOVFNI6pvwXDJ7iLQJuK/Rcc
         6yijqPBIArAy6vX3aB/YrKxnF7zss9sFGbMRWJmySGJIBgNPVnHizHwIKAK6pqazA2f2
         APWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=brKZsiOT6iIS0G8tmBOgDjnt2x9imG0kYyprBpVpTOg=;
        b=X9nhidMQeoOtnjE+ghIbzkuiWTQVAYebiSeAB2ttNXHzbzfpQBaV92lvGmBvt2FLJz
         6layGgcgkI5g426NuQWg06x3xgacp/QxtqNlrhcixWvQULGkItTZHJh/OCz5GFXT+JSp
         2DbttSLbR55g9MaMgT9iU82YU5O4rLMr4XOo/hKa8OVaz2Vdr2s78ua5xF5ibkvW+3KP
         azAtSeXVYL3quRcINMaSN0DlyoMVbuCZbngJeH3iUZlCQ+J1xIdzaijfwkOQ7NQr8q4R
         PhIWZZWP9fIbjFA8nJ8fhvz3w0AzpgH55qpEw+3BMhhUjZSs+nTrsIe7d/nAl3u8QCC5
         jL/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rwwCdvqy;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id v31si539275ott.5.2021.04.12.00.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 00:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id d2so10144570ilm.10
        for <clang-built-linux@googlegroups.com>; Mon, 12 Apr 2021 00:30:28 -0700 (PDT)
X-Received: by 2002:a05:6e02:1809:: with SMTP id a9mr1366918ilv.184.1618212626339;
 Mon, 12 Apr 2021 00:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <1618202061-8243-1-git-send-email-dillon.minfei@gmail.com> <202104121526.gm7LWDAv-lkp@intel.com>
In-Reply-To: <202104121526.gm7LWDAv-lkp@intel.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Mon, 12 Apr 2021 15:29:50 +0800
Message-ID: <CAL9mu0LDi2-aAU=cGDhBb6fkxWRKUNeRXcR-q1snJERm5ju=QQ@mail.gmail.com>
Subject: Re: [PATCH] serial: stm32: optimize spin lock usage
To: kernel test robot <lkp@intel.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, jirislaby@kernel.org, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@foss.st.com>, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	linux-serial@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dillon.minfei@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rwwCdvqy;       spf=pass
 (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12e
 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi lkp,

Thanks for the reminder.
I just noticed this from greg's mail. still waiting for his response
about the proper solution for this patch.
After that i will update version 2 for it.

Your test is really efficient, thanks.

Best regards,

Dillon.

On Mon, Apr 12, 2021 at 3:25 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on stm32/stm32-next]
> [also build test WARNING on usb/usb-testing v5.12-rc7]
> [cannot apply to tty/tty-testing next-20210409]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/dillon-minfei-gmail-com/serial-stm32-optimize-spin-lock-usage/20210412-123607
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git stm32-next
> config: riscv-randconfig-r034-20210412 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/a0e81ae10c46f768437d61cd3a3dfd4d1250b375
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review dillon-minfei-gmail-com/serial-stm32-optimize-spin-lock-usage/20210412-123607
>         git checkout a0e81ae10c46f768437d61cd3a3dfd4d1250b375
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/tty/serial/stm32-usart.c:280:39: warning: variable 'flags' is uninitialized when used here [-Wuninitialized]
>                    spin_unlock_irqrestore(&port->lock, flags);
>                                                        ^~~~~
>    drivers/tty/serial/stm32-usart.c:217:24: note: initialize the variable 'flags' to silence this warning
>            unsigned long c, flags;
>                                  ^
>                                   = 0
>    1 warning generated.
>
>
> vim +/flags +280 drivers/tty/serial/stm32-usart.c
>
>    211
>    212  static void stm32_usart_receive_chars(struct uart_port *port, bool threaded)
>    213  {
>    214          struct tty_port *tport = &port->state->port;
>    215          struct stm32_port *stm32_port = to_stm32_port(port);
>    216          const struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
>    217          unsigned long c, flags;
>    218          u32 sr;
>    219          char flag;
>    220
>    221          if (irqd_is_wakeup_set(irq_get_irq_data(port->irq)))
>    222                  pm_wakeup_event(tport->tty->dev, 0);
>    223
>    224          while (stm32_usart_pending_rx(port, &sr, &stm32_port->last_res,
>    225                                        threaded)) {
>    226                  sr |= USART_SR_DUMMY_RX;
>    227                  flag = TTY_NORMAL;
>    228
>    229                  /*
>    230                   * Status bits has to be cleared before reading the RDR:
>    231                   * In FIFO mode, reading the RDR will pop the next data
>    232                   * (if any) along with its status bits into the SR.
>    233                   * Not doing so leads to misalignement between RDR and SR,
>    234                   * and clear status bits of the next rx data.
>    235                   *
>    236                   * Clear errors flags for stm32f7 and stm32h7 compatible
>    237                   * devices. On stm32f4 compatible devices, the error bit is
>    238                   * cleared by the sequence [read SR - read DR].
>    239                   */
>    240                  if ((sr & USART_SR_ERR_MASK) && ofs->icr != UNDEF_REG)
>    241                          writel_relaxed(sr & USART_SR_ERR_MASK,
>    242                                         port->membase + ofs->icr);
>    243
>    244                  c = stm32_usart_get_char(port, &sr, &stm32_port->last_res);
>    245                  port->icount.rx++;
>    246                  if (sr & USART_SR_ERR_MASK) {
>    247                          if (sr & USART_SR_ORE) {
>    248                                  port->icount.overrun++;
>    249                          } else if (sr & USART_SR_PE) {
>    250                                  port->icount.parity++;
>    251                          } else if (sr & USART_SR_FE) {
>    252                                  /* Break detection if character is null */
>    253                                  if (!c) {
>    254                                          port->icount.brk++;
>    255                                          if (uart_handle_break(port))
>    256                                                  continue;
>    257                                  } else {
>    258                                          port->icount.frame++;
>    259                                  }
>    260                          }
>    261
>    262                          sr &= port->read_status_mask;
>    263
>    264                          if (sr & USART_SR_PE) {
>    265                                  flag = TTY_PARITY;
>    266                          } else if (sr & USART_SR_FE) {
>    267                                  if (!c)
>    268                                          flag = TTY_BREAK;
>    269                                  else
>    270                                          flag = TTY_FRAME;
>    271                          }
>    272                  }
>    273
>    274                  if (uart_handle_sysrq_char(port, c))
>    275                          continue;
>    276                  uart_insert_char(port, sr, USART_SR_ORE, c, flag);
>    277          }
>    278
>    279          if (threaded)
>  > 280                  spin_unlock_irqrestore(&port->lock, flags);
>    281          else
>    282                  spin_unlock(&port->lock);
>    283
>    284          tty_flip_buffer_push(tport);
>    285
>    286          if (threaded)
>    287                  spin_lock_irqsave(&port->lock, flags);
>    288          else
>    289                  spin_lock(&port->lock);
>    290  }
>    291
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL9mu0LDi2-aAU%3DcGDhBb6fkxWRKUNeRXcR-q1snJERm5ju%3DQQ%40mail.gmail.com.
