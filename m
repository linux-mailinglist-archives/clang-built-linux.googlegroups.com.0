Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSHQ2DVAKGQE75DUUCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E848D829
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 18:35:22 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id v134sf5410231pfc.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 09:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565800520; cv=pass;
        d=google.com; s=arc-20160816;
        b=M60J4uVg32PVEpx88Qm3vqgV+0czymCzvlTsZFJBw6rCG2DemIgXvahORKBlFVAOzL
         raxUu/xBBwjeaZNOfk5qGGrpaUWiAPhnktUIRLMrs2+V8OPyukbxLVR3fkMWCUfflhEK
         GQbyTQUkBOIm1OV2K/30oELXsvv17d9a6V8IeHfJadHwHysVZ/KPzZv+OiiwpIIjtHbH
         z/SrSaFolVL8WuKYLlk5naq/2GaBF6sJuB69lOIL+ztS9jv3NIzE2fbpH5C2r/B1ttff
         tCqgYYvy83Zliqu2p+qQH9r7VH1kaW3ziJkeeQmsIFWoIp82ALok5AY2xn5YsA61ILay
         9ahQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=702mTkex/XpH76xUzvTiC7XNfKkNWa/1Yi0pp/NCFHA=;
        b=IYjXMpumhPKrB0bkpzbinaGK2bqRyA+lPc8E2w8p9N6cugCANlGBijVYAeUH4hNAie
         4f+p7tS2FsXbo1zOoKcnq3/nXtgr0dgNksoL2lQWdLV7CCkWGLpLtQj4ZwEnggLcGdWL
         IX09BdC1ker3kaMCBYctbE6IfmtJYyf6p9JZkWgAMpOoZ2gkKcZDJOnPnvYzF4i2MU2n
         Pfrectt6RN5e3pPNobiYqVSb+cjSFuzD4af7SR+EWHfzVdZetqsCuHTgVUB3yYTFdS/L
         4mckE8+R5WvheoFZj7dIFDlzsvtR2oRgEgwChlvONQlPA6pvM1UUoyefSkAGUFakoI28
         aCjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DYvtsrHo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=702mTkex/XpH76xUzvTiC7XNfKkNWa/1Yi0pp/NCFHA=;
        b=Mx7c4m1+C7gcN9pPP6xmnSRoj9qSMkbcvlB+u6nhucNneufgoP8e6p4E6+JjmygmHg
         EDfybOktAAD7/EFB5du7T2doZQyrM+JGn9ku8WhnRfjwNQ1ZlZU+QBL8PwgkZxeuUmec
         ZEZTHqVqJAf1U6/BEKmNes+x6P9xGcnHI3IsDZ08uz/Bh3wBMAnsxHJnfveQc1A5uVOz
         A9aVKrGv+y93nVu9w0NYrvoy0HO0Qh0ZcEkIDSLeMENmomDfLXUI47OB0OQcAwtbbwrB
         SBVid7i+eT3MjrjsN4LQPwprhn214VRXfPjD5k3r2zlCNPLFp6nYNFYwijrtkSZtLW6y
         4+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=702mTkex/XpH76xUzvTiC7XNfKkNWa/1Yi0pp/NCFHA=;
        b=sfsf0Fb5H0x88fmDRBkKfvL2hXpNiUTrEbzyDpdHCfOpvh1Z1oPnejQES/eW05AZ9z
         dqrdaV3u4/mFcG0p4QK2rgRs27TlvQTZvwKKL8QDZkGfZIihJslph+AKBexLFn4VkY1g
         +bCjVRUzMudwJPfWTxAvWbJpf+GOOyU+PXFH7jlOKYJBEhoDphz9KFIliyuOlmZswjDA
         3Lnpq466Llm7UvWY4f3bkrhPgqraNzKFxIZ8NdqZtRber7Wt/p9E/lliWxvQF2Xwn8gZ
         6tkoWUUPBgxjRBu/LNHNngO4dZrNhh+fyzgs+AUY8YETsC+tf/68qauZmKg8AvFsNz5e
         5/Sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVARktAojttNhAywPqbDhQEPAv6d3mD+1HJeXjKYpuNJB5PqhuM
	AUbCVfgLLJwmM2a0cZNKWXs=
X-Google-Smtp-Source: APXvYqx0nt3D427MBieXbMiAq07XdRKcx5uNXaEtn5dF9SFzb7E+yTfcBcNUsDgcvt8cfM89tyR3gw==
X-Received: by 2002:a17:90a:fa0a:: with SMTP id cm10mr551180pjb.133.1565800520750;
        Wed, 14 Aug 2019 09:35:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a705:: with SMTP id w5ls623014plq.7.gmail; Wed, 14
 Aug 2019 09:35:20 -0700 (PDT)
X-Received: by 2002:a17:902:aa95:: with SMTP id d21mr249103plr.185.1565800520398;
        Wed, 14 Aug 2019 09:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565800520; cv=none;
        d=google.com; s=arc-20160816;
        b=V8ycPqUApIulBvH4lDGNws/TproG3H58s2OAdfwhRaN+klSFnGpiWwXim0ffVJrTtr
         Y0rkZ8HCb2g7S3LlwR5P/6MKdE0DxC9q1/Sy1NBbdGsnvDzR/nY8oZV+pCzIBM2/FWy2
         k8Ngoppn6R7qdQ83whn1hiSeX3EulU0knY2UFs8l8efdpsT8p+0OHyFhgPCP73Sl4I4X
         KBmu7qIJfd7hOpGXsPWuuCyeglctcTj4gqS1nt30eE6SXdrvP+FSRLrZ1gkM7zjMBza7
         zvezmJDAg7k9PzDnl5PZEghGlA7+yqZpTEOfxJu3uRBVXDGddoxH5sknAiRC8a3oc8iA
         52vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sgLlHTTuUxU1TwC5AIX4GAGBSYyQo1G2RL+k215Pzxc=;
        b=Djx9/6sFdEC/yUoQGuslCGbS0tLpDGi9GQSTPvk3dgjTOTeTEgUpAc3THM7mVDBvGM
         BjCpOaJrNINT64wFs0rKWlnT1dKqMKoGYzK8vdD0Zsyfoudn7P29fMZ9pVN+grxqxO1m
         iJNIdvxCiNGZoWUtB9QpNm6lxny0UWIF+ry4wdHa5otycEtpdmP5F1xgC6YBwEmMBs7w
         8E9ilo9CRgAWfKUsdXMxt5lEQn9YAbBUeT8HpBrdwzdv8JNdhBzk+cKrdxMf3bFvgC9F
         AP0GFMKcMrl/O28+Llrh8pLNFXVzAA1VSpBo7klp1e1X4J6izcU2XcHXouzifWxRc4p+
         ouPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DYvtsrHo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h136si37223pfe.3.2019.08.14.09.35.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 09:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 129so6975989pfa.4
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 09:35:20 -0700 (PDT)
X-Received: by 2002:a65:49cc:: with SMTP id t12mr57952pgs.83.1565800519967;
        Wed, 14 Aug 2019 09:35:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 3sm261591pfg.186.2019.08.14.09.35.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 14 Aug 2019 09:35:19 -0700 (PDT)
Date: Wed, 14 Aug 2019 09:35:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Peter Smith <peter.smith@linaro.org>
Subject: Re: [PATCH] arm64/efi: Move variable assignments after SECTIONS
Message-ID: <201908140934.C3F1F7151E@keescook>
References: <201908131602.6E858DEC@keescook>
 <CAKv+Gu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg@mail.gmail.com>
 <20190814161904.55jgaxnhd4ujyh2h@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190814161904.55jgaxnhd4ujyh2h@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DYvtsrHo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 14, 2019 at 05:19:04PM +0100, Will Deacon wrote:
> On Wed, Aug 14, 2019 at 07:14:42PM +0300, Ard Biesheuvel wrote:
> > On Wed, 14 Aug 2019 at 02:04, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > It seems that LLVM's linker does not correctly handle variable assignments
> > > involving section positions that are updated during the SECTIONS
> > > parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
> > > an absolute symbol explicitly") ran into this too, but found a different
> > > workaround.
> > >
> > > However, this was not enough, as other variables were also miscalculated
> > > which manifested as boot failures under UEFI where __efistub__end was
> > > not taking the correct _end value (they should be the same):
> > >
> > > $ ld.lld -EL -maarch64elf --no-undefined -X -shared \
> > >         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
> > >         -o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \
> > >   readelf -Ws vmlinux.lld | egrep '\b(__efistub_|)_end\b'
> > > 368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
> > > 368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end
> > >
> > > $ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \
> > >         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
> > >         -o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \
> > >   readelf -Ws vmlinux.bfd | egrep '\b(__efistub_|)_end\b'
> > > 338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
> > > 383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end
> > >
> > > To work around this, all of the __efistub_-prefixed variable assignments
> > > need to be moved after the linker script's SECTIONS entry. As it turns
> > > out, this also solves the problem fixed in commit aa69fb62bea1, so those
> > > changes are reverted here.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/634
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=42990
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > 
> > Although it is slightly disappointing that we need to work around this
> > kind of bugs when adding support for a new toolchain, I don't see
> > anything wrong with this patch, so
> > 
> > Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> Yup, it's gross, but I'll queue it with your ack.

Thanks, and agreed. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908140934.C3F1F7151E%40keescook.
