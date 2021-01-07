Return-Path: <clang-built-linux+bncBAABBR4V3T7QKGQEELLOGLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1582C2ED08B
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 14:21:12 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id g82sf2268714wmg.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 05:21:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610025671; cv=pass;
        d=google.com; s=arc-20160816;
        b=DOzY9FHBCzUOiH9rNweUf3AbKubsdGD4r11V+7WdVsF647GTy+Z/mDEEak7mtgATZM
         f7Vtbloffj3HQW3Cgra1oVotKG0a2isKipuEH+UY+C/axKA6x0O1kcgvlKyVwkwVqQGF
         jhAX41mfjh6Dwn4hod4SQVnsQ9PZVQkSIZUmMaMiBSgH3ChHd+hDNA0EsjFs0HYFdC2p
         oWljyaUKpdkkkjge1z0HVdeeUCzGz+n+vZEGXI+NQ/RdiZYO5KhrTqE7tHHvrNgnxd91
         HJg3AQoI6lfIIy6E9ERfGAGXYfu5lDbCtdNF8Ob/t41x4nzq8PMN9YPdML/mAiAoms9M
         QQmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=eec92bs0G/7IyIHls5We6MLpObGG7uTrLHbvmr7LkNw=;
        b=Z382C9q1AXi0Q2/IkRpyUjCLpG7uRyu2wsB8ehkiE5N5qDPm8M0iCdlTC5QLlBCxH9
         3+5004RR6K9pi0l+TeN2bUsz3/4btGKGfRq+5Cly2IRtjyRXrB2q7HJpgVGRHj3MZZS/
         7QkccZgZ+FlbxAI6AFgISyjFq/F3BUuVej+x6LBipEGWMsXVNnNX4cYaRqC7dEBYcJc2
         NpImwKd3OUKmEpneTKrCrYMmn8550D/ecG2y+5uk2t6DV1XTNLyeS++Kze/kHUo/1ZZE
         eY7ckp5kk4+smwX4ahPcvdOq1/5HSgRscHFT4PuHqh6R1IIdphu4A/NF0m7hS0wNXQV4
         CeMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=j9+A6Rzo;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eec92bs0G/7IyIHls5We6MLpObGG7uTrLHbvmr7LkNw=;
        b=UIjO+vFp66MJepwRBxWolihktP0TIAfJ8HXwHODnMv2LrJjMtLis6/yhvqTtZtjBgV
         hgbScOXRxETFfxWl6am7DgfPtW8J4mldMkF/AzTFBDhqWtO1NQDR06bYIEP75sRFG77W
         IChVL1flJ8OCAmbE+AC65To6J9W9H2zgVjseh/gf+W55tg7AhyE+HGqq4KifmdhAhsoi
         /RAFDd97yz2/0D6dJZnqhvJuOVjrfvFYvec3DtQFY29flqvIhMReC1oBp+gzP3dh25Zo
         Wu4moVk/5QmyNX50HQsVQFTGmV0w+l0jY7IC3rKXX5CAuGvGGXRhwg1o+qvhw+zhzZ1D
         u4SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eec92bs0G/7IyIHls5We6MLpObGG7uTrLHbvmr7LkNw=;
        b=J67y3rFyP2Sb5OSod9naq17uLIicPEB7xnNVhg7QgctPos+JVn7qV8j/klRlIjhKjE
         ejO9uUboz4+En24C5h8A8uCJMW4quUtydUbK9cTZVtnyRqpkzNRy2DEIEM9CW1CMg822
         b9qZ8gAHA40Jbu6SG30CBZwrkTaOC2Q9KD9EYDOq/6bzeCCTuW4PoonFop9O5v25zbR/
         UtXV/tMaamecxd0E1RgPaUH9QxE4nt5VjGaQ7wodLf/fiwnfjjEwtY2RM6/FgnoXYD+B
         5i0NkUVXzFdFuA6QxbtgKHOi5SPaZJ+w73SL5+8MPsz1TMo2HkNWhfZZ0iSsU+4tj+EZ
         sQhw==
X-Gm-Message-State: AOAM531HFioz7kXlT2cYKKegywYJAFPDJKR/O2d2wWrO6EpK0poFaZ3U
	6v9MT8QgTdI+4iBuOBfbaLc=
X-Google-Smtp-Source: ABdhPJyz7Vsj65u9zwxRERQPzovFrJ68hNONAnJmi3xF4Qhz88suqeeUHQMnyDSMezsLndNnncgIlQ==
X-Received: by 2002:a1c:99d7:: with SMTP id b206mr8124886wme.12.1610025671870;
        Thu, 07 Jan 2021 05:21:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls7355262wrw.0.gmail; Thu, 07 Jan
 2021 05:21:11 -0800 (PST)
X-Received: by 2002:adf:ebc2:: with SMTP id v2mr9004429wrn.88.1610025671219;
        Thu, 07 Jan 2021 05:21:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610025671; cv=none;
        d=google.com; s=arc-20160816;
        b=OXIcylX2O0Af/dLCT7jYD0IxpSXMAOLzEEHjg3xGN62uVgZ3c98PrLqs+KqcV7hDSx
         TK5lPt9eLy6rucjcrUX2oYPbXfhhPz5eRsyb01qfcYOLDnm4vbO0EeM9SjRgtPqF28GJ
         cD2G0FR2HOBk1WDqAwWFU21h6TfC9CfoiX/XOulkLWqh/e0oHfjFcIgmXzgO2pmGyIBu
         eRXL5QXmWDPa0wK9w0Pc1sZ3tAhAbE9l3a7sVarY5nBcgngt4PxDHo8brPAw5IWwGgNa
         dkvKs5JNqFQba2u6sp2r3OTrLCMuMOvPzaDDUggPqlPnyby05ySVXIF3s+RurnRQHHzl
         JSfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=1c0zIRSp5j+9jPf96D96lWaXSqjKgRxuaqZWXnp1GJA=;
        b=lBakNUkLkIbpuPFqsYfqJcwBFRZSC5tR12xcmIFn4gJRQdikeQTGaA7oj9p9TQatRg
         ogZCwx+Z/tb1/DWetxRjsGu3EtsdRRv0408lGrK+F5Awn4NU9JLC8B+zuDCX1DsyNI6c
         pab7nzi9wjTeRA4TiOLesgvbBir6jH+tb18ca4XESIZwp1TEvpDY297PN/l3TJMAvRDS
         Q0RMI1MqPE7o9vkgW4lXX2SZtsqQpU6DL35EeJwhuOH8mPHXyS72PF4oTvEdY4ose7Vv
         2sP3ZQj7L60uJnVyuCogsBOdUTz0IRQEtAtvt2nQvUPZn7uWjb6E6k1/QaiLX99xOtgz
         txDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=j9+A6Rzo;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch. [185.70.40.133])
        by gmr-mx.google.com with ESMTPS id y1si339785wrl.4.2021.01.07.05.21.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 05:21:11 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) client-ip=185.70.40.133;
Date: Thu, 07 Jan 2021 13:21:02 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v4 mips-next 7/7] MIPS: select ARCH_WANT_LD_ORPHAN_WARN
Message-ID: <20210107132010.463129-4-alobakin@pm.me>
In-Reply-To: <20210107132010.463129-1-alobakin@pm.me>
References: <20210107123331.354075-1-alobakin@pm.me> <20210107132010.463129-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=j9+A6Rzo;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

Now, after that all the sections are explicitly described and
declared in vmlinux.lds.S, we can enable ld orphan warnings to
prevent from missing any new sections in future.

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d68df1febd25..d3e64cc0932b 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -18,6 +18,7 @@ config MIPS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_IPC_PARSE_VERSION
+	select ARCH_WANT_LD_ORPHAN_WARN
 	select BUILDTIME_TABLE_SORT
 	select CLONE_BACKWARDS
 	select CPU_NO_EFFICIENT_FFS if (TARGET_ISA_REV < 1)
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107132010.463129-4-alobakin%40pm.me.
