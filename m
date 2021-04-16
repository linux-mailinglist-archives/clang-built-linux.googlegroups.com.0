Return-Path: <clang-built-linux+bncBDBLP5PQSQLRBLGF4WBQMGQE46BPTMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD61361DC8
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 12:10:53 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id e2-20020a17090a7c42b029014d9d6b18afsf13893965pjl.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 03:10:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618567852; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCvBqUHLNLVyJadj5jbhJ7h3dTCqI9XCrW+rtKHjPGHJ38DsqkrvFeGLJI0iby7jqv
         jWt/mvQht6SDKHy5fsY2hx5l8Wcbg0tquRLC7OdKtAwhOyTl65zoMEQwrWs0BfI37o1U
         bAIEgMMgcKhkuRfPUagi4ljyi9IgytjXCRg0yhPSitbLUASAGQ5iHVXVFkkP79T8X5Rl
         lSLI61NdasGkDfSX7oHLZ1OD8iWoSwqMfkOkQNgCEm85Hc55QPa0nWiR2+4XVrDQAYsH
         Mz39/shokG15v2cGaWdNWH07jgx70UgZRUITd5rNGNiRF3KF7w3oGlVE/B7s/5/y5uJM
         cdKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=YL5izkWzwDNNsWWh6pn7SsnEdW+c15p2unHIORQNI/8=;
        b=s8ig935o3RUh34AI/j+jqHfFqWDskunB+w+vPWKd7+41mxo/M2K0PcE0oDF8+CQMNf
         oKiZ0WAId2e7rBUEXM7EmASfdpH8RC/7XGQu6AN1d/Qbv634jD+zjHjmUaCRObvLKWfu
         i/c4D0T0XoOMGkKhum6xkv5Cbfx+l+SM2mLZx0reWis2/nUHZ1Y7fdernLMs2iGOZ7QX
         MmeDcT6mRoarOc8TX8hf5ROQsxn8KDPpFhJQ4p8e+Lv8IRMlilZScYvLGyFr9HHq34HW
         8eJMM6mhWrZC7n4Z8mURUplEy1buyR116G7ZRxHIHJPOb1mb+/T1bmDLE+On7+6T9sfd
         RXnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c79qb3Aj;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YL5izkWzwDNNsWWh6pn7SsnEdW+c15p2unHIORQNI/8=;
        b=HtoTkVCnq41s9eKsqeOAYk8zLzagSGqwmSqr0mpvH6SJYpYjAn5h/P7/RO/WLbQp2r
         CFf9FPyun4b0vSeViZp4E3YH6MqymfUh046oPCoh65z2Q4YJ5TMWJB3hVgRqIRqYdiYQ
         ZIZWHUOBfgRE8CFrofxg2GqV0l1Jzd+XlI/CbZMoDIsGeN2cv1TkYEOpKyIukcYImpsI
         043OkSuiJevpgcNOE3A8ROSqLG6mme/NPGpZ1BVIOlWtKCAXqFPVFmtvJrLxMmyvWaM1
         OXw1xf04b0OQCPQ2V2hHRMgd3RIJjlGi5G7446UjEC3ldzMGqLqyyht1B9vEkTAzTip3
         Y7qQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YL5izkWzwDNNsWWh6pn7SsnEdW+c15p2unHIORQNI/8=;
        b=enVDqstge/5VusGCj1+f09x8fshyQ30UeOEOFB33TwtEkOdOxLPa3hcao4KscclEGz
         FDa4ossTNdeOMTWFE1OE66OOtvp274OoCwND+SsG7dDDxRVXPIrzJEk9EkImabTpjzD5
         Xa+WQYFnIEmZGBkhvBJyz1O48U5P3ENZcokQt1x5JCbxhxc1j8BhHSwWzd2WXLy0hZ7z
         5V7HiHJW2V0QKq8zqDlmNNkCxc9CRjV5iTuoBmD/RYV5tajomQt1XVdKYUZ7wXOfnqdo
         vsCMXgjHfejI0l7qyYcG3/oSKk5wIUG1Yl9h/OesU7TcORqLcXBblhCxyKUtanfc3IQF
         yy6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YL5izkWzwDNNsWWh6pn7SsnEdW+c15p2unHIORQNI/8=;
        b=afGzoo1MDz8nQ+X9yNnyN6kkO1XRUOiiC9DPkWt4dDwlfSec6+0T80Uu2m/tLKE4Ym
         G4ME4AuaHpZokUQWUS5GW9bgYacOF3h6ql+zbsewOs9cwhIdUTXs3vVCeq/fkHrRWs36
         KhwS6gfxv6qKXE1Ntylf5LnlQOkm4mGr1xiz1llfMQXIhh6WBPCYeolToUbh0Jr4tzUG
         B7KPUlQF+5BPDbF26EVy9MGZAo9aIPGobahabhzc30RQVg5JnFyk+vcgMglFJuk0UxWc
         l4JeZ9Bb7MPSDsOwu7DBQQ4JWZKp2OpTcgwAQyGdzuaT6BbjhEXlo6M0VRtsvgueD1M6
         +K8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lW5xEvoIOrD8HrD7Un1PhShyzIfs88tBDu1oD6v4oMFk1kVq+
	Xz2PaXUbWafdcy+UZGU4bX0=
X-Google-Smtp-Source: ABdhPJwytQL64A6GDEek8ML9X4ysMks2K09PTRfZh9tAuAiXrNJ/c2+IZpEJLHqx/kyfNFZdESb18w==
X-Received: by 2002:a17:902:7c88:b029:e6:f006:f8e5 with SMTP id y8-20020a1709027c88b02900e6f006f8e5mr8990221pll.1.1618567852187;
        Fri, 16 Apr 2021 03:10:52 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls4895360pjt.3.canary-gmail;
 Fri, 16 Apr 2021 03:10:51 -0700 (PDT)
X-Received: by 2002:a17:90a:b110:: with SMTP id z16mr7338378pjq.8.1618567851681;
        Fri, 16 Apr 2021 03:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618567851; cv=none;
        d=google.com; s=arc-20160816;
        b=yu3kVZlzKcnqvEBn10PliOdofYDgsW0/dwTXMHdP0h97wjMeacgOoKQssLYVnO4U21
         YFR9KAVsRR6Z/ZbaHIXNoTuFZ5BJd7ARFoXPtMOJ/ndcnGpDu1+lP8a9NxrdZkaxbnOZ
         4VajpGEI8ICUvY5SApGbUdbDFhjfsKQq+fx2usL2HSSQpl/LYSwCGkveaiOAT07WKc7C
         alT3nHXx+U/kchcaPcSKLzKqMEknK+qL1PlbnbWvs+Xo+4UuNZAmhZUMbu4ALYjQZLof
         Rlt87at5QEvVzkHlM2A4MT18B2otE8pMlXzilZiCYf7Gz9cvN6h5tHd/qWTEfd/u+14C
         ubXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=A/7hIeNkh74sMxQ2VoT+6Wb/XxhlYBDSbBqmEWtFsMs=;
        b=BERg1ND5J9s4zG1NSP5uY4o/duJSzGYTKmtRK8tflOu+O83B5QMfJ/iLszhZUq+xRA
         q0M8KFlVDMk7Hemx1M9JharSq78nOTOk9eNG3Ov+JOCGXIa+JSwOi0pHIFsYt5BacKc+
         QzcYAlxxCmjLr4wWwAPx4sZrGef8knBB6tCQUtDdlv1SouN+Ges3Mlyb7S5+A/MQSXca
         +qOVbdh3Nd9LjQADzNh3/RShL7dQ0p/WMgsWx2BKwx5psbMPtxrkV7eQdUriV8qIhy8X
         DmAfS9Dit3vlVVJA4DKILXVufsE4Q34HxbYEHb28GnwSEutAXWIlbq3Tza2BaJpf3Yjj
         WXYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c79qb3Aj;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id u12si545424pgf.0.2021.04.16.03.10.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 03:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id ot17-20020a17090b3b51b0290109c9ac3c34so16082212pjb.4
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 03:10:51 -0700 (PDT)
X-Received: by 2002:a17:90b:4a46:: with SMTP id lb6mr9025629pjb.45.1618567851417;
        Fri, 16 Apr 2021 03:10:51 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([137.59.103.165])
        by smtp.gmail.com with ESMTPSA id t67sm4601440pfb.210.2021.04.16.03.10.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 03:10:46 -0700 (PDT)
From: dillon.minfei@gmail.com
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	lkp@intel.com,
	johan@kernel.org,
	gerald.baeza@foss.st.com,
	erwan.leray@foss.st.com
Cc: linux-serial@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	dillon min <dillon.minfei@gmail.com>
Subject: [PATCH v3] serial: stm32: optimize spin lock usage
Date: Fri, 16 Apr 2021 18:10:41 +0800
Message-Id: <1618567841-18546-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: dillon.minfei@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=c79qb3Aj;       spf=pass
 (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

From: dillon min <dillon.minfei@gmail.com>

This patch aims to fix two potential bug:
- no lock to protect uart register in this case

  stm32_usart_threaded_interrupt()
     spin_lock(&port->lock);
     ...
     stm32_usart_receive_chars()
       uart_handle_sysrq_char();
       sysrq_function();
       printk();
         stm32_usart_console_write();
           locked = 0; //since port->sysrq is not zero,
                         no lock to protect forward register
                         access.

- if add spin_trylock_irqsave() to protect uart register for sysrq = 1 case,
  that might got recursive locking under UP.
  So, use uart_prepare_sysrq_char(), uart_unlock_and_check_sysrq()
  move sysrq handler position to irq/thread_d handler, just record
  sysrq_ch in stm32_usart_receive_chars() by uart_prepare_sysrq_char()
  delay the sysrq process to next interrupt handler.

  new flow:

  stm32_usart_threaded_interrupt()/stm32_usart_interrupt()
  spin_lock_irqsave(&port->lock);
  ...
  uart_unlock_and_check_sysrq();
     spin_unlock_irqrestore();
     handle_sysrq(sysrq_ch);
  stm32_usart_threaded_interrupt()//stm32_usart_interrupt() return

Cc: Johan Hovold <johan@kernel.org>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Gerald Baeza <gerald.baeza@foss.st.com>
Cc: Erwan Le Ray <erwan.leray@foss.st.com>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
v3: add uart_prepare_sysrq_char(), uart_unlock_and_check_sysrq() to move
    sysrq handler inside interrupt routinei to avoid recursive locking,
    according to Johan Hovold suggestion, thanks.

 drivers/tty/serial/stm32-usart.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index b3675cf25a69..981f50ec784e 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -271,7 +271,7 @@ static void stm32_usart_receive_chars(struct uart_port *port, bool threaded)
 			}
 		}
 
-		if (uart_handle_sysrq_char(port, c))
+		if (uart_prepare_sysrq_char(port, c))
 			continue;
 		uart_insert_char(port, sr, USART_SR_ORE, c, flag);
 	}
@@ -457,9 +457,10 @@ static irqreturn_t stm32_usart_interrupt(int irq, void *ptr)
 	struct uart_port *port = ptr;
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	const struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
+	unsigned long flags;
 	u32 sr;
 
-	spin_lock(&port->lock);
+	spin_lock_irqsave(&port->lock, flags);
 
 	sr = readl_relaxed(port->membase + ofs->isr);
 
@@ -477,7 +478,7 @@ static irqreturn_t stm32_usart_interrupt(int irq, void *ptr)
 	if ((sr & USART_SR_TXE) && !(stm32_port->tx_ch))
 		stm32_usart_transmit_chars(port);
 
-	spin_unlock(&port->lock);
+	uart_unlock_and_check_sysrq(port, flags);
 
 	if (stm32_port->rx_ch)
 		return IRQ_WAKE_THREAD;
@@ -489,13 +490,14 @@ static irqreturn_t stm32_usart_threaded_interrupt(int irq, void *ptr)
 {
 	struct uart_port *port = ptr;
 	struct stm32_port *stm32_port = to_stm32_port(port);
+	unsigned long flags;
 
-	spin_lock(&port->lock);
+	spin_lock_irqsave(&port->lock, flags);
 
 	if (stm32_port->rx_ch)
 		stm32_usart_receive_chars(port, true);
 
-	spin_unlock(&port->lock);
+	uart_unlock_and_check_sysrq(port, flags);
 
 	return IRQ_HANDLED;
 }
@@ -1354,13 +1356,10 @@ static void stm32_usart_console_write(struct console *co, const char *s,
 	u32 old_cr1, new_cr1;
 	int locked = 1;
 
-	local_irq_save(flags);
-	if (port->sysrq)
-		locked = 0;
-	else if (oops_in_progress)
-		locked = spin_trylock(&port->lock);
+	if (oops_in_progress)
+		locked = spin_trylock_irqsave(&port->lock, flags);
 	else
-		spin_lock(&port->lock);
+		spin_lock_irqsave(&port->lock, flags);
 
 	/* Save and disable interrupts, enable the transmitter */
 	old_cr1 = readl_relaxed(port->membase + ofs->cr1);
@@ -1374,8 +1373,7 @@ static void stm32_usart_console_write(struct console *co, const char *s,
 	writel_relaxed(old_cr1, port->membase + ofs->cr1);
 
 	if (locked)
-		spin_unlock(&port->lock);
-	local_irq_restore(flags);
+		spin_unlock_irqrestore(&port->lock, flags);
 }
 
 static int stm32_usart_console_setup(struct console *co, char *options)
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1618567841-18546-1-git-send-email-dillon.minfei%40gmail.com.
