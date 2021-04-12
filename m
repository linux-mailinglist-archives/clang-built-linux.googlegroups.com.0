Return-Path: <clang-built-linux+bncBDBLP5PQSQLRBANH2CBQMGQE6AJCYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7941935C183
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 11:31:46 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 17-20020aca12110000b0290117886f0d20sf2850319ois.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 02:31:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618219905; cv=pass;
        d=google.com; s=arc-20160816;
        b=XIpIz9KTin1YJoKmtlzh64Du34EZP8cG0z/P1d09TFK+TSNH/pz5SZbUhOENDv/9eL
         IZOnQUJ0T8zhdEZzWqyHExNt1jSAMzaIC+n6VG8n/kFEC+VZbMUt9I05r+vei0Tbu+lj
         LTCNVPZ/V70/2gjcZ4NtwOoqUEH4O66rFSGRyVZr2zCXbCwXvWI346CM3bDkOMEv4zvp
         Ko+2/BAyQJAGUAYoa+MSpYaOMFkbRZ5MYBjq23nk/0V85hGCQNeJbulls7SRsFJxGwZD
         W/NhN7lJaif6D1+Su5k0hUFZurxYrb0gGR5m879lu0fdjfTaYva4rRKb2XRnqONvvyN0
         DTMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=SaPnktexAUcsdPNPQMrGwbhFaa9j78pn7GUZHEQRzt0=;
        b=o931YGNrJpSpZUXy2oRvOBMY01VsERt+iM+9FL6sMkwQwBI3/QyJ+VdSXybxBQlWcN
         hYDGoFPYJC4Z3XIuiJ6Uf8QEcgUvSbklVb5j8Z9i58VkQXef+Lz8XmkMefmwhmANIVdZ
         XyDoHKeJzNgGVzrVWtx2ag5MUBJCuleA36RQE2HO2y0Cl6NKxJX+h4rH6edu4Ew86IYu
         nk7jGgdVXpOvrjOM1Ed7R4nsgUwk6UNkW4y8YCLet9I1gmD+i8l+W1YzuCehWUsetrxn
         rojIY4sFR5Qrftb4ucKGRC2KZ2QbORyJuoR/HXT8qXpCozY23s2Yt69DJK+nYFL5WZgI
         v9bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HtwrWWFD;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SaPnktexAUcsdPNPQMrGwbhFaa9j78pn7GUZHEQRzt0=;
        b=W5LsTb3Fl16LK3FVQRDrAs7XCx3iMO+oSBvIIB9bw53QOb3xKAmktn64CZEVXdsF5z
         rw0eRSboYuGHeIrnLMxSy+Nq0H+07bJsTcAORsNBhH+v3Y1TbHkx2NXBdSfDjefUjqpH
         uymCB03zVd+CSwlRQK/WMjJ9fLJNXUedzv2euZ3yGVqh1DhF7IBMG2IpZAxkfi5bS0Pd
         gHAnpmo+Dcm5nnSEj68ELJD3txADhXcuFdXra/5jb+v/m4pYHgudbcM3I2A+z5C3PnkJ
         ZrP3aALFvXx+0SkBjEz3c9yM+c7kT3+BVDSBmMu/aBicfESauhh4PwvmjEfZDlG4rykY
         l8Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SaPnktexAUcsdPNPQMrGwbhFaa9j78pn7GUZHEQRzt0=;
        b=kaBGiHZAeGEqmUHhgomcr8Dl3PGGUSnCuK7ILqaVe6xOpb9nmUF3008GvyQ760Spts
         G8In7HToYtTgMNspQHq6TKsLuDCL20FDvxQulHrf5gD1tGz3rZ6pSHxOh/l84CBmQgys
         9ee+y0Mh+pYjaB5+JwM77xYPtjE/fWE1QdBtHdNh2+ciMoROu4vflTP/dtIVKbsqCDfy
         LSSI+UuqahVI+oHiNauGkchC5yr8znJyWgsD9a/jv1Fvo34filSchEBqopmtJycbDFri
         sgoeCiaqlXp3/cl1hD5xevQKzCiLVNwTKa8GW/Rd682rQefySsJkzBkRKyszgdysa9Bo
         FU9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SaPnktexAUcsdPNPQMrGwbhFaa9j78pn7GUZHEQRzt0=;
        b=QHRGDuxzIfQuyYJsqbjF73OLCnjGEUBXPDcvcdzKKzgERLm7xrc/yWGHMiXWvWQGNV
         U4RnH/k1leqz/RYR8IDAAIoPGlo+4hgZBdp/bAsRJ5vhSbcUvuuTHyNSuntTh7rgbfav
         B6L+8Brsd1PKBsHpOspdXXF/8rwNad7UnA//DahuZdgpbgLs6FPSSvBCnyYmoN6lCpap
         ZhGAJZ6512u4xub79SIzVPRJS/vsORIM4a3CctrwCbrO7+CNyx41OwK3ot9NEE3VJ4eH
         o80rAvedyl6RLc65MMiqrclWDOrguZ05gZqM9m2tOKKHtnglRERlmBd3jsrmVxQThL60
         sAzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f1pqAZLf8Nw2higYn7y2F8TBFTQg8JNcUMxnhzQ5nYqY+q+Wu
	+B8mSAAs5E7Pviu924hJl0g=
X-Google-Smtp-Source: ABdhPJw6C9VvqWhaf3hwUuOnm228+0I/VKDqQz0Fu/TTLZMunEvzpgESMHyOe6fxI2RfjmdX1rsGhg==
X-Received: by 2002:a9d:928:: with SMTP id 37mr17356243otp.98.1618219905439;
        Mon, 12 Apr 2021 02:31:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4a0f:: with SMTP id x15ls3436755oia.8.gmail; Mon, 12 Apr
 2021 02:31:45 -0700 (PDT)
X-Received: by 2002:aca:3446:: with SMTP id b67mr6771239oia.129.1618219904987;
        Mon, 12 Apr 2021 02:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618219904; cv=none;
        d=google.com; s=arc-20160816;
        b=UbPUtPiM1TwMXfUgnYNcVvxOAz40RRj8Sk+ks84u5ge9/S3/ia1k8MiZRcFXfcsXEt
         lBJqUk1A/+VQmc7SDkfWxqwFM6/89AM9v742xPZcHMFUNG1DivMFtPW1YItNka5faMgX
         IPf0c9r8hluIZ+eQkeSij0xgqFn4C3kyquHtmnmclhLbHW70tCs+OAYuj6xfMKz2krGw
         +HtDxN3aQNcQaJoP8ryvTQeZdGZ8vNSdBiisgfiKdcJpJXei/7tCC3rIdz7yOJddvQIX
         3uin3rMHZJyq4MpPZYxvuRD8iTitcJZpj3RqnP7sCgNxHk+zA6UjEpQAvSgUY9YpWyBU
         FCXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=hnbI4HTxy5h+9wDfXPCcQHa6zzBSTTZbMcq2PaN8c1I=;
        b=Lw0obzHV2YHeRA23XKVNlZZCpyF0q3gO0bw+w9k9z5E/U6NO2ddr71gR0o8G8rENtV
         wns3i97Ml+xGydU1W9iApnCUm4/qMIZsxXgv638fDFG6gY3E+G7voKlV4VjYAaaLfvJr
         x2fb3hMvf1l0srG3pJvmOwgSl4ranpVx3HfqOiQ+ozOQ+0MuPkhJJTtvsVgsD3hKVWoT
         qEwIS8B30hM+NxRBtwVW6GzRLGNzTyj6xJYX6PNAOJU1ROExA4wGmZ1/tef6xelhAwMl
         qKcGECdV4XRcSNU2vqV2+Xg5WJPSozOzPR1yenEDPJ0NHF+sMzkh5pwMYJ6tDcafWodN
         8W8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HtwrWWFD;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id b17si767702ooq.2.2021.04.12.02.31.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id n38so8840949pfv.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Apr 2021 02:31:44 -0700 (PDT)
X-Received: by 2002:a65:68d9:: with SMTP id k25mr9891189pgt.236.1618219904290;
        Mon, 12 Apr 2021 02:31:44 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([137.59.103.165])
        by smtp.gmail.com with ESMTPSA id r6sm10511879pgp.64.2021.04.12.02.31.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:31:43 -0700 (PDT)
From: dillon.minfei@gmail.com
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	lkp@intel.com
Cc: linux-serial@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	dillon min <dillon.minfei@gmail.com>,
	Gerald Baeza <gerald.baeza@foss.st.com>,
	Erwan Le Ray <erwan.leray@foss.st.com>
Subject: [PATCH v2] serial: stm32: optimize spin lock usage
Date: Mon, 12 Apr 2021 17:31:38 +0800
Message-Id: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: dillon.minfei@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HtwrWWFD;       spf=pass
 (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::431
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

To avoid potential deadlock in spin_lock usage, use spin_lock_irqsave,
spin_trylock_irqsave(), spin_unlock_irqrestore() in process context.

remove unused local_irq_save/restore call.

Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Gerald Baeza <gerald.baeza@foss.st.com>
Cc: Erwan Le Ray <erwan.leray@foss.st.com>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
v2: remove unused code from stm32_usart_threaded_interrupt() according from
    Greg's review.

 drivers/tty/serial/stm32-usart.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index b3675cf25a69..b1ba5e36e36e 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -1354,13 +1354,12 @@ static void stm32_usart_console_write(struct console *co, const char *s,
 	u32 old_cr1, new_cr1;
 	int locked = 1;
 
-	local_irq_save(flags);
 	if (port->sysrq)
 		locked = 0;
 	else if (oops_in_progress)
-		locked = spin_trylock(&port->lock);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1618219898-4600-1-git-send-email-dillon.minfei%40gmail.com.
