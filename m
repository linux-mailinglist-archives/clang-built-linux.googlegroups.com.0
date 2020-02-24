Return-Path: <clang-built-linux+bncBCIO53XE7YHBB65U2HZAKGQE67MMSXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A0616B50A
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 00:21:32 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id y123sf8271495yby.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 15:21:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582586492; cv=pass;
        d=google.com; s=arc-20160816;
        b=jQXeik0Y0s4QVbmYL+bNClPei4GiG29IAHF0uS9ZUIIC+PtbW7OuIfwdvGnMgutkAL
         ocvPkhmF9yz8vPHIAyHW5ivkKfM/B/zbnIKIbP9olokEUY9nfdXEfZsXiRPvxl+nBK8T
         V2UVkzkLdCyCG1T17J8jZLRl5wM3cHb6+ulb9k5B5VcbVKrpugMkxjimfwm5wipWw8YV
         lRKl7HBXOTa0s61SeEIatU0uPCudwCmey3xzgSZXwxE8qQNucmOvU8dzAra+SaaL5zOp
         PQ7Uij431IxtT+k15s3ksN/AjDE1Wo2IQiG6Z3k3vhLI9kJexeBl1/EoCyw9shuIHB5T
         k7EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OhveOieOA+RWfLFfgjC07xVx1nn3h8YH5KuPwgHMGtE=;
        b=UrUkgNo+R7gfiCuwNhpCNm0xH1WEylOST+o+vaWbp+YlSLAPQE3Hv4rEelvFSOR3rb
         fQLSKuIvLccZseBTp3E8InEHo945ucnF1AcYzf+zJb5NbistpMbmiK4Kxkzrq0V7jUsM
         lvIVQrmUphRCfX4yDrOpTATi2XMtMDldJeG4IKQRdyseHQPZBpqfzt3Da8QQM+1x7Xdj
         t91cdiRvHkxrM9z9M2d1K9hWyr0zzixgXeyeetZYrjP4BD22KPI/9OEwA2rYfCBNqbPs
         QcrCc2OgBWKXUlrhldvkgtMbqyLKxjluLm7OxUrFyCKKm52/zn9oIpIxqS976X659dlH
         YOQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OhveOieOA+RWfLFfgjC07xVx1nn3h8YH5KuPwgHMGtE=;
        b=Ta9LOXe5/7E1N6jkWp8bO/mN7L1CIs1dhMVsX5LyHskOPwEimJCYyrPnuB/GQ7BHxY
         B/lYVVr4McGutQSZIQM+LBTeBVkheMUcdrZz8lDsDztpqSZjcyHr59XJ8FykO4e00iiZ
         TLK2mhrd/jcBNqv/demCDJawcPhoQOgnkESDbrNWZjaOQq6FCzmejbpGwi8W29YQOvvI
         VrY8O46WRPJT2azst4mYo1xxHedOzTMfz1a4uoTxUKTwR+a2ksHfoMRQbUAvSyyQLylk
         OsCDR4EKC1giDeHQZKWlHDcFADxVImt+ZLf8zjyKwypcWJiIORXRJ7IQWZVDOjhHpuNT
         jGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OhveOieOA+RWfLFfgjC07xVx1nn3h8YH5KuPwgHMGtE=;
        b=TNnQF5l9+IGWj/byWsdTB7vQXkSt9rxDRmoDhAAck5ket8G4oRZwfjEjIb+0Wr6qq1
         aULCih1wxDEWvO3c1RGA48kZ1Yqm6BK8v6sTerqujpRtAu3SAYaaMDHC8OnFxUil/KzU
         cU0ifULbWSsW+31WIMiqP4oNMOUAGREp2kxQU2WYwhKvc7vAfzHwOsJKBQWJoM5yYr1P
         kHFDDRupX/AOrU2TeGhTfkuB5IfR1GrBfKbpc9LA3VTSaZvlfa0uuu784Y0cGfpLFQv9
         6Vkv7shzw9oROO3+oHMUxFcVK1Oo/bZUSdu105AB/LbVS3uRsZEFestZL42EAXaKbZ5+
         cljQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUan7K0ESTbJXnR/tKFO3EAkVagp4XRJsUx40+8i3bMgwzcaRRM
	WSMacUc3aoka2KAKHdhnba8=
X-Google-Smtp-Source: APXvYqw0/6VyZv490UyxWY22GFvlRcr+mNwk0WC8YDHfDqqTQ5aBV043URLxmU/gi4iRFO87sB4/vA==
X-Received: by 2002:a25:be12:: with SMTP id h18mr968039ybk.109.1582586491896;
        Mon, 24 Feb 2020 15:21:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa4e:: with SMTP id s72ls2598254ybi.3.gmail; Mon, 24 Feb
 2020 15:21:31 -0800 (PST)
X-Received: by 2002:a5b:b84:: with SMTP id l4mr49942495ybq.349.1582586491497;
        Mon, 24 Feb 2020 15:21:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582586491; cv=none;
        d=google.com; s=arc-20160816;
        b=pMNi4QRMxaNgf8TCzeMb5VNpYXaPmPlKIXihY5P4JKeD2Ntm7vsRC4x0aJ9kARmaKy
         cGYgVM2kEHumYSpDOig+/TmpElPkeeGrmhYwaQl1GBmCGWxikM8VFAm1tYXIg5kyi9pf
         cIop8yMJ0PuzShBt6C1Rq8qZLAKNFEjdcr588X9kkDlYnPYDyneV6bPgefVJ3TXpLuks
         5U1lq/5+SN1WsEulL9seOq1kFGCytHSNyp2FgEM9oEbmslmEJtZF/Gwsq1un/oOiODCH
         xjxRoWsgJHbkkzsEEguWrTKS4PkazyS928ercwGpjEpXGFoyqOl4c6qSnYRb69TLFvPO
         2Puw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=7eJOUKA9+YMnHErB2iphiqe6znDzVNUSfeCBuEYYLTo=;
        b=lz5qsYcHc5RNsp+PGZa5CEAUubQNeT5dYuBOzntLP9F8v1qdHnokpUhpsHzrD3ASud
         w4EawtuIs2qTtWv4t+c9POTzsCI2rTgZN+2531Pfh0c2x8gS+N6SnGFoPvo8dB/15h/Y
         oUnQLAFyqbXg1r/wUhslpTg3LtQwZNVEaLrQTyE4WfHmHc0y/0UVnm0j1ROMQ6Tq5XHi
         h8MZw6mVvL2ZDGSD/mW+hEjKxMX9TZUNNlUh0g1U1XGWBOrQ9ElqJr3C4ne5hWdMdemF
         PI80nGkNjTbGG4dU0Yum7Z7+fVf2Mr7SYpFYzvp7Gm9J7+RCOc9Utz2CxjYuQtP4Jaq/
         3BiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com. [209.85.219.68])
        by gmr-mx.google.com with ESMTPS id o185si694305yba.0.2020.02.24.15.21.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 15:21:31 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) client-ip=209.85.219.68;
Received: by mail-qv1-f68.google.com with SMTP id l14so4905890qvu.12
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 15:21:31 -0800 (PST)
X-Received: by 2002:ad4:580b:: with SMTP id dd11mr45660696qvb.242.1582586491073;
        Mon, 24 Feb 2020 15:21:31 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 202sm3757849qkg.132.2020.02.24.15.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 15:21:30 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: [PATCH v2 0/2] Stop generating .eh_frame sections
Date: Mon, 24 Feb 2020 18:21:27 -0500
Message-Id: <20200224232129.597160-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

In three places in the x86 kernel we are currently generating .eh_frame
sections only to discard them later via linker script. This is in the
boot code (setup.elf), the realmode trampoline (realmode.elf) and the
compressed kernel.

Implement Fangrui and Nick's suggestion [1] to fix KBUILD_CFLAGS by
adding -fno-asynchronous-unwind-tables to avoid generating .eh_frame
sections in the first place, rather than discarding it in the linker
script.

Changes from v1:

Rebase on top of tip:x86/boot and include reverting the addition of
	.eh_frame discard in compressed/vmlinux.lds.S.
Fix up a comment that refers to .eh_frame, pointed out by Nick.

Arvind Sankar (2):
  arch/x86: Use -fno-asynchronous-unwind-tables to suppress .eh_frame sections
  arch/x86: Drop unneeded linker script discard of .eh_frame

 arch/x86/boot/Makefile                 | 1 +
 arch/x86/boot/compressed/Makefile      | 1 +
 arch/x86/boot/compressed/vmlinux.lds.S | 5 -----
 arch/x86/boot/setup.ld                 | 1 -
 arch/x86/include/asm/dwarf2.h          | 4 ++--
 arch/x86/kernel/vmlinux.lds.S          | 7 ++-----
 arch/x86/realmode/rm/Makefile          | 1 +
 arch/x86/realmode/rm/realmode.lds.S    | 1 -
 drivers/firmware/efi/libstub/Makefile  | 3 ++-
 9 files changed, 9 insertions(+), 15 deletions(-)

-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224232129.597160-1-nivedita%40alum.mit.edu.
