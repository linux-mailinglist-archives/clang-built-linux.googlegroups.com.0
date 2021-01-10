Return-Path: <clang-built-linux+bncBAABB7GW5P7QKGQEPV37XCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 622532F06CB
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:56:44 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id w5sf6324146wrl.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:56:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279804; cv=pass;
        d=google.com; s=arc-20160816;
        b=h2AhU9v3ReiphJF1zkdvK6psf1KTT3DX4K1u+r2gVaEa3+tV46FiYbbXkeqxmlx9aM
         vvgPExbTneplkNodkpLd3KHvYtzlQkqIyVLH9hSkxfb2GxkZCGhuBM5peuia5HL332kC
         ISwbHp30tZ6M07edsym/2GGw9rrbiqGmCmZwW5EqGL+/mpsL2xB5cpmwqJyNbpwLmrOa
         PD9JCV4QGNdGhpa49XDSie2G0O1LyYVVvNv8h/jDm/2QqW3gvm4VFN92D7rKrV+/Zc6R
         X8YnmMZYb+EpHiri38LBCSb9mM/LYjzC5REGiqS2cXax28WrMwkOxQGkveYSjOjg2u8n
         a2eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=QZoSLWmySFYsOAdgLa2dhY9tHGMtUXDFPN4INSLBJDg=;
        b=GLNMRcPHQqGkRCiUP76XZDqX1iGA7wifeuhNX+2V05DLeHztNTeGn3IGLnhITSvf0g
         nP8wXDWnHv8WU/DcMc9J5RP3v34Pt4BGEO3XSdZuY2m+AIyi8WQDK44psG83ncX9Kl+C
         UlMHtbyA6HAYXBKHKmcnvOi7223zC/VoSmuHuAHPJDYAAbgHMnwwRVP7RtEm3Cn6QMlG
         0vuw6EIqHZZlpbzKKH+ChXDHBYK5B4Wv9Hpf5oPii8yuprKNOjmURFdT28gyQLidmmBL
         3lFOePeTze55YmLXOzvPv+IKfFACE6doalmK6HqqrK+zeqmL7cWGt8yV3PJ+b62qKG78
         qOQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=YhwP9l3Y;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QZoSLWmySFYsOAdgLa2dhY9tHGMtUXDFPN4INSLBJDg=;
        b=fHQN9iTFxYSCv1GsHRxX5tFlSjqUdSlPR/uLw5E82g3k6+A/Vzqi0NEum2xCzmQ8Qs
         CzKXgnJplwIXEr4Hb/2vg4j4fmUgtscGXAc0iLyr1vw7ug+8XLJZNRQKfotJKL1HX2EZ
         zrVGcIUM5IJ3zvk1fOc6gy/tXoR7WId1ptG5I+wXkp6njXny2yauelgrMaAlzMcdeINa
         URppWUQLMzU8fw5Tcwp5MYk4ucdiKvVMpY8YG13ZHVletKPU0Hi0p23FeCK6q5xdyk52
         f+LeprhdnDvl5OXggXl4YyUyyoyOtVEdWPngKeUL3f86ZQCpPtRcjyVtEpC0JNM4IUO4
         5A3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QZoSLWmySFYsOAdgLa2dhY9tHGMtUXDFPN4INSLBJDg=;
        b=hKpHBcbKKnRJPwgnfiDeRvCKijV+1T2TyknQgGxLLHGEiS3zXHSmmUEztC4P5y3zz5
         kv/N2OSGKDr49wtsXaCo6imfb7CVfNDOXRzpg7khdVh46WTIrhQeZpkhrDwCazEKgiex
         oHcCJEEt8xYrPFyLQwnC1FKEWMhMR12+PW8GSvCrQegiBXPTKe4OdA67PWW5J97MsMlH
         EDOiX4lJZryPSGGG6PvORDoJFKtDAcDQwAbjeo4jmhaGqISlblvEPeevCw2Ryo4fafrU
         Yelpqp2dLRUFSb+0XnqUFa3DXhoS8zfBQ0+jvC6anTCjwljYk/0X4AGmg6UglOA5PA2T
         KPBA==
X-Gm-Message-State: AOAM531e3ifPF7qfnKCthBbmtXfy47bhianfwmUo14OKJOieuu6ZSp3x
	uiHAKyOOlDtAwzyZV/5/W3U=
X-Google-Smtp-Source: ABdhPJyeE4NKFGLyOfrFfvc1aO0b7lk2CfxvLYa4DQgXDBhfZeeIptmkkzcqm53tJIcHMqa6t9XCCQ==
X-Received: by 2002:a5d:5917:: with SMTP id v23mr12360639wrd.308.1610279804171;
        Sun, 10 Jan 2021 03:56:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls2840413wrn.2.gmail; Sun, 10 Jan
 2021 03:56:43 -0800 (PST)
X-Received: by 2002:adf:f78e:: with SMTP id q14mr11886302wrp.320.1610279803598;
        Sun, 10 Jan 2021 03:56:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279803; cv=none;
        d=google.com; s=arc-20160816;
        b=AXurB9SaPX90cBwwwwaAuw6QoM7nULBiJ3oS5ZILoslEzd9JSvep3iIveDAtXk6ujT
         ek6JWtKMgC5CUeojuJKJsYJiTzKVPQkaMMjaVcNtgUFxCriNFNUE/YLvtgaAZgXw1jAf
         0hDQjKarvOP1VrRD6QJYyWg2yNPqE4F9O/bgUkYKrLkW4vcGyL/g0EpaUDROKRfAJTfi
         bxpromg/h9clWnPJiRCASLNWWC9oZgNqoBpVxZv4NC5C/v0FFQPXdrSeSCZ61P2RREZH
         +dCrQNin2FkfQoCC/la1FCgkShWpZ/GZAWrf//U09Bgn+26qwwf53TyWT8VsHAbmYrRJ
         AKmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=RlF1lh7iHyBsNtm+h3Fc1S3Q2TDvtrRsAKToRMl4zRY=;
        b=F5DstKxyp0whNHB7ZCmD4TyOVHDDNxuHvQkT0RH0kQHNilkM3Oq7orqv3KnRuZ2G3D
         4seOAabU+P2eZobIp0ldk5x8gLPW68ANL1Fk1F6DDA2Th3VBTcX629w/jhbiPDIxy4VN
         VtqCe6/a1QWkiUKG6+IP3m8F5pMhBuzDeps98392lH5yl886e0yxlii052zPqcc7hIKh
         9Twi2P60c0UZqYIOAZujdnf+fvpZp1GMxsMZFhT+N3etSiGmDfV0VQssW7y6sffzQDFf
         K/4BaMBlmqX0rv0wdTu53t2mTimWzDWfkDs9r+EZDNLNcn/yFg8LbaDwKmOGuge//KbU
         Xg8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=YhwP9l3Y;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch. [185.70.40.133])
        by gmr-mx.google.com with ESMTPS id d17si666997wma.4.2021.01.10.03.56.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:56:43 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.133 as permitted sender) client-ip=185.70.40.133;
Date: Sun, 10 Jan 2021 11:56:41 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 6/9] MIPS: vmlinux.lds.S: explicitly declare .got table
Message-ID: <20210110115546.30970-6-alobakin@pm.me>
In-Reply-To: <20210110115546.30970-1-alobakin@pm.me>
References: <20210110115245.30762-1-alobakin@pm.me> <20210110115546.30970-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=YhwP9l3Y;       spf=pass
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

LLVM stack generates GOT table when building the kernel:

ld.lld: warning: <internal>:(.got) is being placed in '.got'

According to the debug assertions, it's not zero-sized and thus can't
be handled the way it's done for x86.
Also use the ARM64 path here and place it at the end of .text section.

Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/kernel/vmlinux.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 70bba1ff08da..c1c345be04ff 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -68,6 +68,8 @@ SECTIONS
 		SOFTIRQENTRY_TEXT
 		*(.fixup)
 		*(.gnu.warning)
+		. = ALIGN(16);
+		*(.got)	/* Global offset table */
 	} :text = 0
 	_etext = .;	/* End of text section */
 
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-6-alobakin%40pm.me.
