Return-Path: <clang-built-linux+bncBCS7XUWOUULBBIUSZP3QKGQESKZRG7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7B5206AA1
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 05:31:48 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id f21sf585543otq.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 20:31:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592969507; cv=pass;
        d=google.com; s=arc-20160816;
        b=wv93/6ErdGnNeG6eNHC2UeFTIXmMfDkz0PBXJT+byC8x5K4zh9hKjXjHZUG0nzglaa
         HnskD4l4M7likg4GSxtNDsWZFmS6i4V5eAa2RVzhXM5fo0l+DKsCZDE4a4pv767zZ+JQ
         WAdbHQAsAeBbXJuXnfWCvZeDcaiq9nJyIb6ICCFJGgi/P8SgVZs+09fjZfKzNbldtl1B
         zbu8lHGY3o1v1wkgH5b4D+5p2nr8SH7KzAFsQNqZB9ZIzoLmHpAT+ITsg/BvtbWaMJzk
         VTJJVLDoPn1ozoqiLS9Yq4n2A3SeQGfz8amScd8TxNAQWc84sjfA945itrEazMnfm+cP
         nIQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=g0d7ErPAW09fbz6n/8LX8HwPpfMv6QmB533VN5vGqEE=;
        b=P0wod9kV+i1MtvLxevycZVCi0CJU+EUAVkblU8lTb9dhfN0/9JeQ+R1oDvFo7kzcm1
         s3CWHWrJtjkiOlDIXpTGO+CevOcQ/Rha/v9IFbKS+JhNIcDcqOg7DGRwntPiJ43i65sw
         64dH9MBXP32OfNoLoBhP1YlOjgRr7uS5Msgy8gW3tMxWWNEDKe7n+dnz8WJD3s3HZrAb
         cqCujrLwcHHb+KZgk9zBS31cLvRmfByD/Cx3I5zAINvgbbpVFiO8y1m2mFRhPhizleEH
         0gBp5uSqGDyumudZtcFUXmFp7y6BynytQcMMqb5R5xwNnv5GKsTpWZWylUGry9ofrmP7
         X3yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MvLV62bG;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=g0d7ErPAW09fbz6n/8LX8HwPpfMv6QmB533VN5vGqEE=;
        b=KPv9VoJ+ZsNMsRNmnvDLRZcNqwN27ND5eyoKEhDF7dEa0Uk86KNho+cmKkPwnv9n4y
         kNisK/Ar52feomXhbnj9WdKQ6THc6eFFF93Fn1ON6Zwke7dk6cyNz6Ck4TsChHtvDSM1
         be8+4ulM9i2NfWTFB2/wPT5zGCn0VuGO/8w0eORjNkSE6v2vpuCXECTvns9eMM3q/mFF
         O8PklUdFfn+vqzCw4yv/wxrJG7+85pEhkzCRXD06LmVlNGV95zg6tBVvbjAXmrnNTzqA
         DqbdIbnjZE6WB1aihMAfQ/1xgq7iipMhsawcak0ZV5Md63WF9eOB821vF5XmHVolYnkr
         1hhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g0d7ErPAW09fbz6n/8LX8HwPpfMv6QmB533VN5vGqEE=;
        b=ECwQJnnnwpCtH/7/M/GpryCFUkf3kUXax3cJEd3YdY4Gvlpylc7hZqkRmBaGKjtZJY
         ru+ApT+x3fLUXcSJe6//3FmjGaEZULQ5NRLRMfagmtvBRAiDdy/BcvupKdqxHnzw1tZk
         YRDQBuScBUBWISHtIO/MrWcT6ebMOVMaIWYjLxR40ePSE+/wHxnRxkn4WxQw1ifiK7Wm
         NauLxVGyE9meJMA7V4aGD61M88W/qe+Lse8WSwGJtBisJyQv5RUkrFJM1KM7rpNIDrv/
         W88YwRbM3V/j/O8FYx0XfwvKuLqEDu0JBLluOh0Pyjrz9y/EMnGx5pXb8PxzInscHq51
         9B+g==
X-Gm-Message-State: AOAM532gHdSCgBMETzZIqu+/o7BMCI3i485nfnmoPcJPItPLVM1O7mfj
	scRLXsAInzGfQ6TT8tq2jDs=
X-Google-Smtp-Source: ABdhPJznmUxyGtj7+R1nw+/WlowEV09OPJl3txFmDCZNT9CU4H1XfT4ezEYeoc+7DwVxgwJgpD/KFQ==
X-Received: by 2002:a05:6830:14d9:: with SMTP id t25mr21051968otq.12.1592969506942;
        Tue, 23 Jun 2020 20:31:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4808:: with SMTP id c8ls168174otf.7.gmail; Tue, 23 Jun
 2020 20:31:46 -0700 (PDT)
X-Received: by 2002:a05:6830:3104:: with SMTP id b4mr21470234ots.192.1592969506651;
        Tue, 23 Jun 2020 20:31:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592969506; cv=none;
        d=google.com; s=arc-20160816;
        b=z+HEeIac6QO8XhmAu75l0HZZh+GEwzwwQH/0IUkJLtWEXxo4xjMsyH2i4qQQ97CZFG
         K0SUkvoA/gpNtN3JoCJy57EwTrosDnEElUgyLZGERXl17qm8pkYZHcbRK5r0asw1cjZV
         a1yLJQZYjhcrWroKxPOkxMDFmTGMHYKl/xlOBX61qpYdxGSV3OTvvKTxHGNe0sMWx/Tq
         zHJTKP9S/ZaMWCRAtNUDcKCtVJ2rmZccZsP+4Vyt/7rEtDUK0vaGIU75a2Y1dc9WNKXd
         ftazw+FBPnQ6KNUK93WcOopMrotmS96E6DuuFPXMgAUg9bPoDr6hm/ze+NyoVhPCE8Cx
         9XFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IahJt8/KJJjCX5znAGwjVoLhoLAi5KgGttIopC9m27U=;
        b=XAlR0PYCznMw6mHyzUdJKLq+DysNxqDWUwQRwlnjx/nyieq7gC1vvgQP+Iu4sme3pw
         6u43fcpUXYLV45uUsoA7CPOamn3BYIPbZGAQh1jAG4NVzqjgrRdl8tErMWY2PB7Ur/CC
         y4Wqi11pIBOgch052s262EAkCEBsbZWqz8nth5g0lt5bb5p1dDx8Jqfdr2b11xc64GIj
         SpZ88PhbB8pJ6Eqfz8O3aL4yyTsRJuNr93+oPZuswYNqUHroWHE+wLL2zNI0NVD/+kkL
         NZQJP7HMJCZawLFXQ3BPdrrYPD81rMiFXD9EkbOo0N0JP0nQKTT967HUBoWFEp1O5Rvw
         2p8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MvLV62bG;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h13si1651604otk.1.2020.06.23.20.31.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 20:31:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d12so456478ply.1
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 20:31:46 -0700 (PDT)
X-Received: by 2002:a17:90a:1ac3:: with SMTP id p61mr27689014pjp.23.1592969505744;
        Tue, 23 Jun 2020 20:31:45 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id c2sm14702791pgk.77.2020.06.23.20.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 20:31:45 -0700 (PDT)
Date: Tue, 23 Jun 2020 20:31:42 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <20200624033142.cinvg6rbg252j46d@google.com>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200624014940.1204448-4-keescook@chromium.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MvLV62bG;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-06-23, Kees Cook wrote:
>In preparation for adding --orphan-handling=warn to more architectures,
>make sure unwanted sections don't end up appearing under the .init
>section prefix that libstub adds to itself during objcopy.
>
>Signed-off-by: Kees Cook <keescook@chromium.org>
>---
> drivers/firmware/efi/libstub/Makefile | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
>index 75daaf20374e..9d2d2e784bca 100644
>--- a/drivers/firmware/efi/libstub/Makefile
>+++ b/drivers/firmware/efi/libstub/Makefile
>@@ -66,6 +66,9 @@ lib-$(CONFIG_X86)		+= x86-stub.o
> CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
> CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
>
>+# Remove unwanted sections first.
>+STUBCOPY_FLAGS-y		+= --remove-section=.note.gnu.property
>+
> #
> # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
> # .bss section, so the .bss section of the EFI stub needs to be included in the

arch/arm64/Kconfig enables ARM64_PTR_AUTH by default. When the config is on

ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
else
branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
endif

This option creates .note.gnu.property:

% readelf -n drivers/firmware/efi/libstub/efi-stub.o

Displaying notes found in: .note.gnu.property
   Owner                Data size        Description
   GNU                  0x00000010       NT_GNU_PROPERTY_TYPE_0
       Properties: AArch64 feature: PAC

If .note.gnu.property is not desired in drivers/firmware/efi/libstub, specifying
-mbranch-protection=none can override -mbranch-protection=pac-ret+leaf

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624033142.cinvg6rbg252j46d%40google.com.
