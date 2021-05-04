Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBHNOYWCAMGQEW4DHJRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F265372BCC
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 16:15:58 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id d11-20020a0cdb0b0000b02901c0da4391d5sf7707011qvk.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 07:15:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620137757; cv=pass;
        d=google.com; s=arc-20160816;
        b=FZzwN4Be64/Sq5toom2o/7QOkvSAhV9dZ+zbbYHoMenPMIRSCwc+hJwjZVXEtwkmEV
         3ZzC48oywK8RlMTMZJLWAV66PKkToB8HU8UCxT1wF2gQlw3sQ4LFKj840ZpMlsfUdXmc
         7PVgGhNW+eAK3z4AgUUlVZNqM0howQovkK9AlMNLtdPnbbogBcent4EMD9MhY0PbDBiJ
         7AwJICz6yBVqJqSXwSJgU1InXNnx0I4kew/R4lPnkbIcNfxQLNRiju7S6xgbwYTfSEzP
         FtJg4x9dzttA8kkGJvjKXRU1mYJSEAIoLAlz7UDWF6TwmdnCk+s0N1GKDTNtVbRw+XlS
         wdRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :date:from:cc:to:subject:sender:dkim-signature;
        bh=DKYn2j+13D7MUGWwposhaKmUn6hfzOLzxKw/fkUHbAY=;
        b=aV6KBSNjmUcGulgtA8YIuCZcfuXEI0iblTpe4KaPZrK/JYaGrjvOcxAG2KaLBLUADV
         s7PwFhW5THv0EFmMY4SW70agA5utZpWTfHNDqTkWwOCuSF7Y7NXErYAxBta8p+TOl5qT
         wJhD57KaCDL9dXkBcyfmar9z18og77nqSH+7C7nyiqK34dzty96Dpy67sVw0QdMiFZbJ
         ZvcnimR+QhgNm7WPyu9vsmvpAx4HR5argmpmBZbYNxaiDn45HbpkOoysZ4BK7ndGmSJP
         sEjglLVtdNhoAbOwTJ7XU4vvYGV7CaRufPXqxQbgHlgDXLI+k1XSt5SKg24dIgToA32e
         KgGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="WyeWb/hX";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKYn2j+13D7MUGWwposhaKmUn6hfzOLzxKw/fkUHbAY=;
        b=EOD2eOJ+hz0k06bcorZMcAGJ9F7uXWkTZysNiNubialZ09WUj1Z4K9js+3HbiohrbF
         vpPnI/6kH7VoCEOktlZfeVo4HhMaQDOUctT3vJ3Y5nPCrb+6X5JywAoSl0GX0/qZEZPy
         lecbHYsqVpjVODgRLRw7+bhwqjWQ7dAQzoHhAcnTQClO9JPMJw7XhQPS8W1HZgQNh/qk
         sYb+Wk+5ZfruiUciEvhgMZqqgiMwwGtUgOR7iP2hWfWl4yVTeMW8gkziUY0DlPHAGihs
         dRWrx1zqvtXTWQPfiw2euQLAob2bHFMFgbLfobu7Dzmp7dW4EKIc2VD8VNUHsQz7ML93
         6NZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKYn2j+13D7MUGWwposhaKmUn6hfzOLzxKw/fkUHbAY=;
        b=Dx2eHDSa4LGZ+4/dzR+bnGovWFHf+HlqM2xB9v0OQ4X2L8o2c6Kn9d0zY+nwIfCSI1
         VVrUfa4CnuE3uyvPo43tDliE395QR6YWjAtWriEDchsxMjUhCNTbqBh32IIQsXbxFMhs
         DqDdYOJ2zrgdXhpuACCU+CBfAuW7v8Cl5SuqyXGKY5rTBmOwO5rRVNJgpmeBISY1NLZQ
         HO+S9/AmDnvHkA/CthkyIxX6nI2V0MU7GSgamogGB0z3ZWho+6UWH2yF9cdcmzggh+l6
         Ryflt3I85js1/6QTc8YRjL9HhaCHCTolE2eztNlrdr/cKAletYEq17yZ2fXJ0A8ML03a
         PPrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310KGZhSdtcfJS+xhXEsKmf4cOsw9hBx7wvMhrtJU2Ff71NWJru
	N/bGMbnd0x9kuqflCzmb7+g=
X-Google-Smtp-Source: ABdhPJwm7knrd0d/57qR8S9eccrPYo9bhX/6qL+0PV9DC+poTnnGuSTFTBVDFaBEVhqqmuNCNK3oTg==
X-Received: by 2002:ac8:6b19:: with SMTP id w25mr22702790qts.42.1620137757195;
        Tue, 04 May 2021 07:15:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f28a:: with SMTP id k10ls5324898qvl.3.gmail; Tue, 04 May
 2021 07:15:56 -0700 (PDT)
X-Received: by 2002:a0c:ab88:: with SMTP id j8mr17971947qvb.23.1620137756749;
        Tue, 04 May 2021 07:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620137756; cv=none;
        d=google.com; s=arc-20160816;
        b=cK31uc8RTJQxZiHEOj+qlXYEvVSDaRP6K2P6oG5IYTWdiKPr5mrCLSqrmsVP3amX27
         MYJtnrs/RDTxoCnsgSx/erGgkD/2VfJVutBxnyHLTYhOcJbhE7qHLNvJS2vYy/jQIkvZ
         8NjKubXhtNyqQemYEUKKmq9MxkfSC/p1WBLuOFhyuMprg83mk2M2oslAIkwgwSdKFMnf
         WZ9FVBM7c1qDN0meQVAZC7u0YDvvVC1+PwXcN8e17p3lIBc8Zp8XAliicCYUl7tWiyUQ
         8iV0r/8546I2I6l82Q6KfUzeUa0mxewxk0b9QFUbd5Z4vvExjt5BPBVyBnJswXuskjlI
         yANA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=ZsDvN61GU/ktQvSyIXrrgl4sDu2GClDPRY0qJFF7TSk=;
        b=gTkcOhnKtGVJlZSfamaTcVCQNGyjnVtjAjFGR6eXskuuzwvvO5HQnLvnIXdyTHOb8d
         PSB8b6FZahBzbBZG/UABs7gp8orr9TjbhnQYd2kKzVi/mwZQYPp/EyaBRIYCsg2c++c6
         w0s6YSlQjEnavXQByS+j+w99OyH0UmZIS8H79oTFxgroB7S9X1faIL7eX1nxewJvpw8q
         tqIGE71SvaCyB2PRCPW88JKaAUU+VB8nfmmil+aA4y0Yl4kL7dkpB7exsYR2qEtuDv3P
         pxsjWl1VHHuJYv4ZXmSlUDcWAICHknbtgwgYmq1FjsCaRUeHcRIONyjwz9SaYOfqKmSh
         omIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="WyeWb/hX";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y8si227556qti.5.2021.05.04.07.15.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 07:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D228610FA;
	Tue,  4 May 2021 14:15:55 +0000 (UTC)
Subject: Patch "avoid __memcat_p link failure" has been added to the 5.4-stable tree
To: arnd@arndb.de,arnd@kernel.org,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,lkp@intel.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Tue, 04 May 2021 16:15:53 +0200
In-Reply-To: <20210504104441.1317138-1-arnd@kernel.org>
Message-ID: <1620137753152113@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="WyeWb/hX";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    avoid __memcat_p link failure

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     avoid-__memcat_p-link-failure.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From arnd@kernel.org  Tue May  4 16:15:19 2021
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue,  4 May 2021 12:44:33 +0200
Subject: avoid __memcat_p link failure
To: stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, kernel test robot <lkp@intel.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Message-ID: <20210504104441.1317138-1-arnd@kernel.org>

From: Arnd Bergmann <arnd@arndb.de>

The kernel test robot reports a link error when the stm driver is a
loadable module on any v5.4 kernel:

> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!

This was fixed in mainline with commit 7273ad2b08f8 ("kbuild: link
lib-y objects to vmlinux forcibly when CONFIG_MODULES=y"), which
is fairly intrusive.

Fix the v5.4 specific issue with a minimal subset of that patch,
linking only the failing object into the kernel. Kernels before v4.20
are not affected.

Reported-by: kernel test robot <lkp@intel.com>
Link: https://groups.google.com/g/clang-built-linux/c/H-PrABqYShg
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 lib/Makefile |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- a/lib/Makefile
+++ b/lib/Makefile
@@ -31,7 +31,7 @@ lib-y := ctype.o string.o vsprintf.o cmd
 	 flex_proportions.o ratelimit.o show_mem.o \
 	 is_single_threaded.o plist.o decompress.o kobject_uevent.o \
 	 earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
-	 nmi_backtrace.o nodemask.o win_minmax.o memcat_p.o
+	 nmi_backtrace.o nodemask.o win_minmax.o
 
 lib-$(CONFIG_PRINTK) += dump_stack.o
 lib-$(CONFIG_MMU) += ioremap.o
@@ -46,7 +46,7 @@ obj-y += bcd.o sort.o parser.o debug_loc
 	 bsearch.o find_bit.o llist.o memweight.o kfifo.o \
 	 percpu-refcount.o rhashtable.o \
 	 once.o refcount.o usercopy.o errseq.o bucket_locks.o \
-	 generic-radix-tree.o
+	 generic-radix-tree.o memcat_p.o
 obj-$(CONFIG_STRING_SELFTEST) += test_string.o
 obj-y += string_helpers.o
 obj-$(CONFIG_TEST_STRING_HELPERS) += test-string_helpers.o


Patches currently in stable-queue which might be from arnd@kernel.org are

queue-5.4/avoid-__memcat_p-link-failure.patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620137753152113%40kroah.com.
