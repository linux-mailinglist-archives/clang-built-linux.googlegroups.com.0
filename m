Return-Path: <clang-built-linux+bncBDOIB4GOWANRBSXF377AKGQEHXEDVFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BA12DA408
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 00:18:35 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id 18sf7214640pgf.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 15:18:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607987914; cv=pass;
        d=google.com; s=arc-20160816;
        b=dmNZhNkC+/2bu9tw0ysAmr44BzVD7irKAtkwhHvIln+EKl9ToUf9bdSk9zNcg6ZKYX
         mC/qnlw71y4ZULu83ihjn5BHtoMoOleFF7h3bVFdFN38EPJso5lKNgbdv+URSKxacNFn
         2LmmKKuAp7p/x4JKNEfIbIJPlo1dACs59aG04o1EH4u3MOIuddJ8490B3R8Zs3nmMOu4
         T89zHL3uKuMHgNvt4DRd9ttxxY3GovJOZsd8UxTpgxnusA9AeHu/fYGQ/61HyMCE47GC
         h49bB2KV1YiSBwXn24h/87HJYq3qFRsHfAmW8wUUnM/IOavylBp9ewY/83+2U04m+VEF
         7etg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=eeH2GT26hT+sU/hkWRFIB/+LCbYk/SaYBP4KNYIWgnE=;
        b=YyRXuh5CZUABfw1vMmI0Fetr5+R9bbaMjLim2swaNCvwLWLPAS8dMCQdO9w+KUx85y
         atLtDFFKF8tSOBo5lVGAOm5/6osNXbNKvNc+/NmWD3gqOSuixlBFHjgoM8ZLOHNEVIa/
         ojMvdtBVkepo4wZdBWEUzkQa7y7ACbNoF9sH6A1DjyoAKDlD000et7cM+/SqBwG3ehCL
         RbS/yTMFkD6XG8yjmfEMt+aV5Zji2g/pQq+0X7XMBdQ3Etiqd1PZLUy6RB7RJLP8pYB1
         Uff/MxZ8S/PtMA5EXCj6riOErmVH0I2OF6+htMNaa8GQa4RDO5s+Y4Yxz4J7vh0VnNzM
         LtAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hHQI60c9;
       spf=pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=amodra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eeH2GT26hT+sU/hkWRFIB/+LCbYk/SaYBP4KNYIWgnE=;
        b=QLkEWSQm2o53P2SQWXYwCEJtUj9Bch1d5y29zrMTcfc+BaRtTaYr4mKKuitTxk6fGr
         6z9r+KZVxcr9b/HHxBsJSAFNAdb/XlCJewg5k+2VSXlhbiOI7fv0cNzDK3WJKV7VttKM
         H/hbSa5sODPRRGKqgEbhaBNpr+8Nwjvbp00GhUWoJzzJP84SGhqf++bSHKhmtIdOVtDy
         DJhEmRNqKfglha3vN8qVBfviUz5pjN0cq5CK+jBlvTdToYcAeS0aE7OXm9RMN2/DwbuA
         /57eklXX8DyYAbyOPs92gT+XpPXlnfDrqDAyYp85QJ1gowUrYWTb81seRK2Zgq9b2gEF
         rwTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eeH2GT26hT+sU/hkWRFIB/+LCbYk/SaYBP4KNYIWgnE=;
        b=t6/x8B3/3sznIe87QZEPY6SgdyPdPUbdGMGO75bHYz2/tRKCzMM5ChhiNCoxoBGSQI
         4FHX63/AU4s8RV5GFVMEspwyG+yD/MZ/cJz2WPU7/kobyMTZ/yna0GYzODU/x4EPAN55
         DgJXoViURQc0w5FkJntqmjxgw3PbeppFu2rsIAODca7SOm1LiV9pchU0pEBve0zYlwpv
         Uo2Lc6ZyLdELY1naGPS6L3X/eTQsoXmQhMN8Tlu92MnbZP8ePWBR359wT6zj3ONciiAX
         Ah92MAyqouUkJ/Pir50EZ9eS2zhc7WJ6PXdKSYrG2WLZGC6fDfiqgzC40B2OGZorKyc1
         qvVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eeH2GT26hT+sU/hkWRFIB/+LCbYk/SaYBP4KNYIWgnE=;
        b=FFX8CKjinlEFRzBspuqjV7YrZS6TOQYSsYC3878HYPljUlMwk3pB1WraQ5Hhp5jkqw
         pVESevzTRvM0FuLoPb0LfcLNxaC/myDJQeJs2ie2otdE8LouDLXtEzCCK087GDInVK0E
         /1ZooO2ITPmVEfl8nOOZPmnx84rjpyNqisPZePlovZAqvE49v/SwtPN5R0hCQ8ASB2CR
         H8HRrXAhNlmuuNO8/3r+3oG8vV+i++i6/DopJtKtLEgA0jHyH79MLuv6Qqpcj9O13LOa
         8q8AEffGdIgibMStWyv9QIJw50YDtROIt8nrb9p3h7JTNHwnqQqcefRVDl5LIuz2mG6H
         dDrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313T1Fv0G/7bqlQVL2uwJf2wvbblR7443MsT7lOmPlw6TTZfDib
	JwtOGWzNAQpL6mgSZVvnLLg=
X-Google-Smtp-Source: ABdhPJwpuaIGOWCvwpke9l31OW/wy3haTBeUuO5ejU43jRC2zPTKUbk0G7S72DLapPqXxLcCagogww==
X-Received: by 2002:a63:e:: with SMTP id 14mr26334720pga.426.1607987914174;
        Mon, 14 Dec 2020 15:18:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4d4f:: with SMTP id j15ls7157309pgt.11.gmail; Mon, 14
 Dec 2020 15:18:33 -0800 (PST)
X-Received: by 2002:a65:490c:: with SMTP id p12mr33553pgs.98.1607987913423;
        Mon, 14 Dec 2020 15:18:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607987913; cv=none;
        d=google.com; s=arc-20160816;
        b=WdpZM4Ra9Bp4e12+Qbog8coZDAo4XMlieZye65Nunug9GnBUSoBrLGirFxx15k/mGY
         rhbraiObHTBP/cCbv5/wtC4VBYDUq8+WLyiZcli8DKhibfyekR7DNP18xiCIcyRR6XyR
         ExisJMJGqS4hsRCwptKekJZcTW43FDS7CjvAPgcOlq3hI8dTY/ribtacgCQRE3SPHJXz
         ToX0MefcUIQRiJrrGs9wG+fb0YlsNrixCDWygaNcgjCyP/sUaH7joI6DvbgnJT5EYPXR
         OZ2yFQ/8n3zzeGWF5+SSd37Lre3Hk6UY8KVjF8/CAg33vAXpJ7ioqLFaY4AMpZR80g+P
         RDTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cy5+nb3a0dSIGsiUUPc3iQidez+Phr48KktH/YxEMmQ=;
        b=XppBFX9g80mFnkQbWVoiNVqgQAiGfOLGAG6juKzWe3gTQLkiJYFuXAhW8GLN7K72t/
         0DPBr4ixUQP/JJ/KWnGoMM4PYhwTY/dnVwa3dI10bWI+JFMrevjdo0dKpRJk+Z/ILBpv
         gh42NZDVLMQM9G/0u0eKsGQGOtL7ys7961IfEaNmrCyaAfhryfx444ew8/xTeyIYMaX+
         728qqr7TTOPb3+6uIPS942pk4SojDXh7DcOq/n0LxeChWLbhJAxOq1Uq0fTG8DEKZfC+
         hdJB8xmZZsgka0XhndXXAIpshUl06v0imFcO+vq9I75BdYTKoB35S7NE/cp5WmyXJnRA
         wCQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hHQI60c9;
       spf=pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=amodra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b18si450pls.1.2020.12.14.15.18.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 15:18:33 -0800 (PST)
Received-SPF: pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id i7so2179674pgc.8
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 15:18:33 -0800 (PST)
X-Received: by 2002:a63:1d59:: with SMTP id d25mr2636879pgm.259.1607987913173;
        Mon, 14 Dec 2020 15:18:33 -0800 (PST)
Received: from bubble.grove.modra.org (158.106.96.58.static.exetel.com.au. [58.96.106.158])
        by smtp.gmail.com with ESMTPSA id h4sm22508539pgp.8.2020.12.14.15.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 15:18:32 -0800 (PST)
Received: by bubble.grove.modra.org (Postfix, from userid 1000)
	id D755681792; Tue, 15 Dec 2020 09:48:27 +1030 (ACDT)
Date: Tue, 15 Dec 2020 09:48:27 +1030
From: Alan Modra <amodra@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	kernel-team <kernel-team@android.com>,
	Will Deacon <will@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	Peter Smith <Peter.Smith@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Quentin Perret <qperret@google.com>
Subject: Re: [PATCH] arm64: link with -z norelro regardless of
 CONFIG_RELOCATABLE
Message-ID: <20201214231827.GG8873@bubble.grove.modra.org>
References: <20201016175339.2429280-1-ndesaulniers@google.com>
 <160319373854.2175971.17968938488121846972.b4-ty@kernel.org>
 <CAKwvOdnYcff_bcWZYkUC5qKso6EPRWrDgMAdn1KE1_YMCTy__A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnYcff_bcWZYkUC5qKso6EPRWrDgMAdn1KE1_YMCTy__A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: amodra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hHQI60c9;       spf=pass
 (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::542 as
 permitted sender) smtp.mailfrom=amodra@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Dec 14, 2020 at 01:44:06PM -0800, Nick Desaulniers wrote:
> aarch64-linux-gnu-ld: warning: -z norelro ignored
> 
> So we set the emulation mode via -maarch64elf, and our preprocessed

The default linker emulation for an aarch64-linux ld.bfd is
-maarch64linux, the default for an aarch64-elf linker is
-maarch64elf.  They are not equivalent.  If you choose -maarch64elf
you get an emulation that doesn't support -z relro.

Now I don't know why the kernel uses -maarch64elf so you shouldn't
interpret my comment as a recommendation to use -maarch64linux
instead.  That may have other unwanted effects.

-- 
Alan Modra
Australia Development Lab, IBM

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201214231827.GG8873%40bubble.grove.modra.org.
