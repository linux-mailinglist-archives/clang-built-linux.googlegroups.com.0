Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBBPFQ6AAMGQEK4XDPUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB7B2F85BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:52:38 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id j25sf4926325oie.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:52:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610740357; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7idLlY7wO+t902Nql1i3mgRK2IE2ESQRmxtjJ8FStmulb/yMV2PyiMQ0FqG2hY/8W
         Gvqd9CZfenjneN7FYI9sHhNIWlKvuHlTqd8HI0k6M4d131j6OgaDzdj7cGKrCpE0xrd3
         zWkz+AoG+bunGq1iAGpj+ALzWVSH0aec0yo4VFXxa2k5LdUBB0xR6a1ToHFKqWePmKCq
         9b2tqqoX8ffxWwc0nEN6HXsg2HmEJ+J6rKBt0z/h3R30Umi7I5YKBlU8iLZtepdp/2s3
         WSF5n4s4Ni5G03Ep9nt6KU1vs71mNicYgevIRLXywXDu7jAhnl//sSiZRjUtCan3AGtd
         gaJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ELTI5v268nOI2m6ZNrBn+ECIcvppxv1OkW059wKapPs=;
        b=OIumJq2zSOlIcCOGUHz8pr0fLwhl5+6W2gTytJ43K1bjch8LVT0U7Cdqb3ukQpk5E+
         z4qk/2LlD6X3NkpIHeEho6Yhgg4EhwC8KpeRHfSMcZYD0BPuOd+tvZzOb2d//xOL9aJ4
         adLKXMM0dguLXa2xINxEWArexBMOkVTAkeJ6FXlS3a1V07IWbBimfeNF8ELtcc/qqrQn
         2MJayg31zzwUqu0b/v8bBzloGr74Bo0VRPFp7Sz0mTMI6xdB9PMPaCfIXNte6odXCMC6
         xnpsITPOaXeXzXNTwLfQ3hcatZbSceOQVIMxdSNWVS5N5q1Khhe9epgdwR2i/kLgc+VE
         MlJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CAlbNLEe;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ELTI5v268nOI2m6ZNrBn+ECIcvppxv1OkW059wKapPs=;
        b=H3x6u5uL/Yf1I9FhmY0FLMeQlg0fzxfGV7ooTq4SnPDmwW0FKVtR4yNRBP7j5H1oDp
         AwFkeQBohRb1PZclLfEan7PZMDwa9pEy9OaTxIAhxQGNzqlfCDGcvvcHun+YzSSaAJY6
         gLmieHNK754hQwYn5h8vUF7GUoJ37UKm4lQ/DQ45HBgwkWvsMa5VFAQH0uN2AD7sHzO2
         gOoEIC5Em/NVKF64ltev+6mjGmVUqouZvV/OtBTgJOksRZ5+J0LGELlHSc/azuB+/oNB
         5XU/28JWcUhLm+Qf2FsU6vzRDU2gGmtehSCl8OHiaaqFZ1Xg83DxoIQUpozBD1KOmgQ+
         LBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ELTI5v268nOI2m6ZNrBn+ECIcvppxv1OkW059wKapPs=;
        b=BtOegDfkdYvmrw56LMsBYE4oHLQVBGeAqIVfA54NriD74u3FJ0/S2MnRWrzExNA+OM
         OoW+GMPeLzFC2kCVpnNOfrn6SkAprURBSi6Vv1pMSF5VN3kKe5pzOvVBSnfLKyCj8DOi
         Cev9XHpiFyS+SkysPFgD8hGdcmWEIDdwmePdCnW2RgQeO/4sz50VaGIrtxM0S/3lHySc
         4KB4jTjiphzNAt0xugIHhD5bOGK7bib/vtsCEN23FpF8nrwOgDIJSz+c3jM8Izx5i/ve
         pdIJkT5LZ7dVMTH2XcAj3Zf3unixJmiQkk91SQO6CyviryXMeU0U77paNbJubwDu3r0E
         doOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304k2+dVU7oh4noBUz7KteH5unOSa7r0d/ZV5oMXbvEZHrMEtHx
	1kS8iA7UxsurJ9AxIeRAw+Y=
X-Google-Smtp-Source: ABdhPJwCJC6zJWL1DX1Msh7QfbuUQEti8UNFPD4mZvZaclt6G5BQgexcHSYkulidJTSECSZQtIaJAQ==
X-Received: by 2002:aca:504e:: with SMTP id e75mr7012518oib.170.1610740357182;
        Fri, 15 Jan 2021 11:52:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a97:: with SMTP id q23ls2443327oij.1.gmail; Fri, 15
 Jan 2021 11:52:36 -0800 (PST)
X-Received: by 2002:aca:d586:: with SMTP id m128mr2179553oig.15.1610740356783;
        Fri, 15 Jan 2021 11:52:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610740356; cv=none;
        d=google.com; s=arc-20160816;
        b=Yz2bdHuJb+OGrpaskwfaRUZUv0Pp5wIkShmYxESLflndYAVOCAqyEUW36m1vshBoHv
         GB6HbPG4qMgZSBTCSIxT7rQIdsCCGdaKOJRNm8Rz9LqPeDaY12es5ey1gOapVNd12+M5
         RzroJj8k9EOFuxjBxW83kKco+0pBNxWB8RTQoDaFMdXCd3AaVbx+HONyPT7aiDaZoSsq
         +Ahw6sGfCGnlTRN4USHwQyiUJAK7sFrzujMS/C3b00QcHkJpqTbX7q0rAfGev7TMoqjt
         cEUI3bS7/6BVEPqIOGS6//k8tkZeK6ocWISAKppeZTzPnu60zstZs6XIkaHqlnDvrjrR
         FAnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JYUX2O2Url/4uImMaTVPMyONJrBt2Lv/2+C4E8uQ6Pw=;
        b=Ydg8f4UVkNnu8hC5q7fe9D0bH7J3H8d74VIIqW44Fhayzq8lLunGd3MuFeCtEc/tCw
         fuVGsDcA9hl64vg3G0TCXRN8sXkIvN8umBm3pYVWKbY0RfnIkEBYHOh4JUf++u4t1lnp
         HawtH14Hb3U5qtEA7dyA0oUDSA9FowqvqhxRq9n2vEt5ACbBSDFYX2GSN8Gk+1caIuZF
         QuYybkR5VQMVP4rsr9f9s23NiczEkbPn9lAd5b3DOD+8GP4mkfrdBEV4mQXxzYpBR2/w
         9IWD0EYKbcmDRg1Qm8QFCfeN6IabzKpBs4cNbUMpPXjCgCwyALeWiY803S5k9yPHG1Hl
         vkrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CAlbNLEe;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id x20si1029071oot.1.2021.01.15.11.52.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:52:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-568-gXpwSsl0Mh2Do2FIQbWDKQ-1; Fri, 15 Jan 2021 14:52:31 -0500
X-MC-Unique: gXpwSsl0Mh2Do2FIQbWDKQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80050107ACF7;
	Fri, 15 Jan 2021 19:52:29 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9745D5C675;
	Fri, 15 Jan 2021 19:52:28 +0000 (UTC)
Date: Fri, 15 Jan 2021 13:52:26 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
Message-ID: <20210115195226.uiclol5lji3tuxgx@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CAlbNLEe;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Jan 14, 2021 at 04:41:28PM -0800, Sami Tolvanen wrote:
> Hi Josh,
> 
> On Thu, Jan 14, 2021 at 11:40 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > Add support for proper vmlinux.o validation, which will be needed for
> > Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> > objtool anyway, for other reasons.)
> >
> > This isn't 100% done -- most notably, crypto still needs to be supported
> > -- but I think this gets us most of the way there.
> >
> > This can also be found at
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> >
> > And for more testing it can be combined with Sami's x86 LTO patches:
> >
> >   https://github.com/samitolvanen/linux clang-lto
> 
> Thank you for sending these! I applied this series on top of the
> clang-lto tree and built allyesconfig with LTO_CLANG enabled and the
> following crypto options disabled:
> 
> CRYPTO_AES_NI_INTEL
> CRYPTO_CAMELLIA_AESNI_AVX2_X86_64
> CRYPTO_SHA1_SSSE3
> CRYPTO_SHA256_SSSE3
> CRYPTO_SHA512_SSSE3
> CRYPTO_CRC32C_INTEL
> 
> I can confirm that all the warnings I previously saw are now fixed,
> but I'm seeing a few new ones:
> 
> vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack
> state mismatch: cfa1=7+192 cfa2=7+176
> vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7:
> stack state mismatch: cfa1=7+160 cfa2=7+176
> vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to
> do_strncpy_from_user() with UACCESS enabled
> vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to
> do_strnlen_user() with UACCESS enabled
> vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call
> to __ubsan_handle_negate_overflow() with UACCESS enabled
> vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected
> end of section
> 
> I haven't had a chance to take a closer look yet, but some of these
> are probably related to
> https://github.com/ClangBuiltLinux/linux/issues/1192. However, I can
> reproduce these also with ToT Clang, not just with Clang 11.

Thanks, I'm able to reproduce these.  Will take a look.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115195226.uiclol5lji3tuxgx%40treble.
