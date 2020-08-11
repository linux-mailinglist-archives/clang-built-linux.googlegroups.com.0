Return-Path: <clang-built-linux+bncBCIO53XE7YHBBWF6ZT4QKGQE3AWACOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id DA02D24229D
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 00:44:41 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id a19sf189329oic.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 15:44:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597185880; cv=pass;
        d=google.com; s=arc-20160816;
        b=AVlaHUIQouiGZRQBymPXjwDkQwsJNL/ULjfxsfUnsKULV86tKhrKHvfVS1/sIWgwqd
         mzej3w1ed0+Je3xl5/UiWKJFUy/C/FuH7Piqm9B/fSU2LdSfhscIfkXefxWXSQkYTzHc
         sj+8ug7eoeLcRqwIS6W4gpNo8tctgWrQTGEqiJ3ISMKCoqMYdXVGg7tKiXqFsJgtBLzM
         1q8SXbtPqslAanMc7COB4ZrIVU9aJwvY8FJkgYqLvcjXZxmcpi+dFpQ6FBH44lfygdHl
         Zt2BNXQNAOE5kKVglwwU43lk4axXDiAejSR7nwHMdjKvqO/tLEBqy2DAV9AF0FxW+/EO
         BSlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=V4PzvK2Pux7wnJ+g8G2AFgXcRFFA+U5TGv5HTGKAxMA=;
        b=f67WvzIj/KGEq1aEK8n7AQNM9NW8qHgDo5Q3yq3D/bDBsQWxZlhp5iMVV27vYF38Tx
         SMgz0Dxzpqrfzh4eMYJ3auq/yyGYMgxSIiaBw6ENXjWnvIFIIZcm5pXOuaIRI9aiO/Xt
         PkFaKIYTd8jrJUF7mPDZ9+VnkWwUI8mO+8YVH9HBLIKRDAZViR+Owj3vpp4WLaEXedw/
         GvC8SF3ABjPy+wdwWa4yvA4/HDhdDdwZyuaghsVcwsz7tUp8frjEhB24ZF3LerHQGpZT
         24zO1d+R0BnFFIjtkDGBMGYaoNv9+bb0DombukdHO0bcMwt8IUG5C3cnF05oBz7tgR2m
         AaSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5zaAhUq;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V4PzvK2Pux7wnJ+g8G2AFgXcRFFA+U5TGv5HTGKAxMA=;
        b=hvtv3h/z46DN+GYkJSnu2scSPtDxMovjQLHmOvmBfzOvq17jSdxZJaLKt84J+S6eXz
         +XysDTTtPiy7Zue70oEC5jsgJqJ4a0f3Qd1ogF04jj2HG2bpz/kTUoOpzDedHiovEADE
         bB/guu8xtz2tQIgoKIQ3UTymQPJ+cwe8dzst8FemmhnINI0/deB1bWbNgCk6BwIuc46h
         +6IwJXn9dpfkGy72+xaBIpHmidUqyn+rlSIRddaxSuzuGI8xp/VrS/1wArkgAG/Hgjfj
         3Gy09kuWuQSew14Y4ObIe5B1E6eSOkyxwcnLYj0f+dU62Ti3RiFpj8q8ALzT7IG44syL
         hF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V4PzvK2Pux7wnJ+g8G2AFgXcRFFA+U5TGv5HTGKAxMA=;
        b=pVsb2ght8G8chAyYxa8xzmj+xmFDfX2lOvSrGHkPdo/NT5zQnb5S5Ipelr2Vu7N1ZX
         p4gDB71MHTo7sobqYSoI+kn5kKUSEMO9c/MdJWuDonT+kOGWU+H1KrP5UU4IY2XPNngF
         8nswuI7wMW/qDFtZlrZ+J3yp3rQoDhpB0LCB2npfGzV4jOImO5rp3+G/D6PrsXJhaRl8
         QT63jtS7DRHBpQg4cMqHwhulec1tJq6hmvlwwPgofCjQz1Jgn+G6FDgL35X+BigS6a4A
         LrLSPtffDRe+rm0mn7t7RI+6uz04yGvb2TPBTDyWWisa2BZGD7plPQtzIx+/S3PF1LbT
         gPKg==
X-Gm-Message-State: AOAM532c4pOlIe7Ma93DAcUmi1yTdDuS/Mnsavt7dsNYBEl/45MtCEPk
	TCGvtAgq/E20BLIMWcetDIE=
X-Google-Smtp-Source: ABdhPJx9qsx2DI26u1p0wCbZNTrS2SfAO35OFo/bvsR1NQrlr2spQk7Ta+5a7v8lkwXswQzTWXlagQ==
X-Received: by 2002:a9d:77cd:: with SMTP id w13mr6501149otl.146.1597185880371;
        Tue, 11 Aug 2020 15:44:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d658:: with SMTP id n85ls56482oig.7.gmail; Tue, 11 Aug
 2020 15:44:40 -0700 (PDT)
X-Received: by 2002:aca:1b03:: with SMTP id b3mr5381374oib.26.1597185880024;
        Tue, 11 Aug 2020 15:44:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597185880; cv=none;
        d=google.com; s=arc-20160816;
        b=b426D2qJHKUV6fu4cCMob8xg6nzjV+WH5HXMGwfQZzEl8dUvl+5h+3uS2yeLPLjAPT
         jBfr4zBjNmgYhyMK8iAGD0spw+lbqInJTwxZ/i00OK3vHQZxn05+LpyJRvwngP+ONfPE
         btDsy/DmrwfPBA8+n0PXQZb/32sW5Q0ngF8P+2ilsT8/RY/fSPIZtSkb0e28OlX6SzrA
         wttYNWcGTNDticxbrpJyWgnvgBiJK8KbX2wyDNDeWVyL0MDzuXFcV5UzxLSmdsdFhwan
         PaSrYCvBX4m1jX6YIGLIATOko5cLWqKtGSR8RIKhQw+AM0KU4V08+PMFguZfE50T03KI
         FkfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=mBWFL754Vrf9Z7Daog4EE5sGqx+K5IQ8vwyomqlrRJI=;
        b=y3Mna2uodzHWrACtuTCRWw/WkSW/FE4/BLZYT0YEG/0PJYCZC7rpc7RigQKvk4ncam
         lAR+ImisJaNtC54znZVMJCMedCrqKlYPkVydgvw8kX34U4Yrv6o+zW5ZACjooxV411sl
         Xp3IhFMq/9Rlr5vcrlHsA1YgqZYlxwlI7Ctlu+MZ6Bxqwqc3mxHYSqYD7fTyXAjTSWEq
         ivvWRdH8DJssKkeCfkCg8DRvjtcxFUxjtxYJvo3CjpyDz30E6qwDjWK1BwP+jMQsDlH6
         SaVYh1IJY4Ey//B5kMbd1YxpGShaA+ARCf6kc1/nACOWBUvnveFjyaDrUtIQlCtmJ/PS
         7clA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5zaAhUq;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id s18si10097otp.4.2020.08.11.15.44.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 15:44:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id j187so407263qke.11
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 15:44:39 -0700 (PDT)
X-Received: by 2002:a37:556:: with SMTP id 83mr3379743qkf.208.1597185879356;
        Tue, 11 Aug 2020 15:44:39 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i7sm256301qkb.131.2020.08.11.15.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2020 15:44:38 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 11 Aug 2020 18:44:36 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] x86/boot/compressed: Disable relocation relaxation for
 non-pie link
Message-ID: <20200811224436.GA1302731@rani.riverdale.lan>
References: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
 <20200811173655.1162093-1-nivedita@alum.mit.edu>
 <CAKwvOdnjLfQ0fWsrFYDJ2O+qFAfEFnTEEnW-aHrPha8G3_WTrg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnjLfQ0fWsrFYDJ2O+qFAfEFnTEEnW-aHrPha8G3_WTrg@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o5zaAhUq;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Aug 11, 2020 at 10:58:40AM -0700, Nick Desaulniers wrote:
> > Cc: stable@vger.kernel.org # 4.19.x
> 
> Thanks Arvind, good write up.  Just curious about this stable tag, how
> come you picked 4.19?  I can see boot failures in our CI for x86+LLD
> back to 4.9.  Can we amend that tag to use `# 4.9`? I'd be happy to
> help submit backports should they fail to apply cleanly.
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/179237488
> 

4.19 renamed LDFLAGS to KBUILD_LDFLAGS. For 4.4, 4.9 and 4.14 the patch
needs to be modified, KBUILD_LDFLAGS -> LDFLAGS, so I figured we should
submit backports separately. For 4.19 onwards, it should apply without
changes I think.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200811224436.GA1302731%40rani.riverdale.lan.
