Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4PYYP6AKGQE4CPNI6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id B78172956C0
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 05:28:50 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id s9sf191022oom.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 20:28:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603337329; cv=pass;
        d=google.com; s=arc-20160816;
        b=MbanbjcgLWiACfAp5grPoi1MI4DQUiR/eOvHYHUTyy5fVPxCR+NDfmYENBQ5lQgQ9a
         rasHJp1SKVMTpIKGO6tuRChIWh2qOCuq9DITh5287Y7OTvExmChL9S+aSzBGuYnzuFyk
         QjRUadC+vsn/b+hbda9dcxh3T5Xj3MUzAPHN9eIShPyrbHGdo3apc/iu+3fZ2QEtUCub
         RYSgVgkH+LZyvZzbCdjCV12NBoAZZddTyLORI21uJjLQxHGRRZlqkjXXfmE7FJ3Pj5O2
         K4iThlO0eZUzt4Iu1l4cHFfLIJM9gMaG4V+lSUGcYuqWmKK9lv2gEIlWMUaA3MQRT1Xa
         w9+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=BZ8wsDSoGJ5Qz6a9Gx3z/b5SI9K8gNna6U5srn0jjCc=;
        b=J29AGIW5rzgdrB6J8xim+mRtLbpvlTs7RBBjKCAeluX08lLQDqLhcv1eIsTEiFmes1
         F/EZAqMNsqWR5zMPwhCMsYsi12FhCEV1ENvTAVAcNhi4QumyYHlF9W8jo8Y03OYQ9xWA
         ft8Aj7EKCBYu9wWAcjreERoorsGldCqeS6YA2+sMp6XTyodKtjdDDr8REMn7maFjL1T7
         I4MYySJB2upT9Lic2Hvs43Xbxz6Zk+0BbSPhWvGdHsg1DwkPDO0NR/IoTzDFm/xsN7Ri
         QETqyVIAlM5xDjjIxW5zzl1+52myYeCboWJ1bC3fF8TIiYRbv7BXB4sMQpaVhEU6obtw
         r/dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=m2a4Af1r;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BZ8wsDSoGJ5Qz6a9Gx3z/b5SI9K8gNna6U5srn0jjCc=;
        b=STBcRB1Yx/G5bDkPViF13SJw2reJXU7GHIrMV0uR3q/H2fZ7Mi3HhZIaaACOgHCqK+
         S2RHsQpHhl/opCGCdnLmJq6GMnw9fSzltZfyxTgdpIeQ90pPBpkNsv/MapLCCrogsst0
         aoj/3sFV/SkJlKh+XV2NoKbXCLcT7ax0ZPn6GCH8twTMFgZw41CZllXV8pzwsRqDNQW/
         f87/QjbBnRI+rNlqeETxaARc2NWiukCz0Ma1kq2OhLbJ7rU/oAYUPicwsii98KwGFsxi
         ddAUfrAb1QE/RlXaxw8dcZdr3pCOvhpNn9aoKTdoV/nCzV00mIL3QvdFjSo3MMVyJrgZ
         KF3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BZ8wsDSoGJ5Qz6a9Gx3z/b5SI9K8gNna6U5srn0jjCc=;
        b=hrQvkz1T0zO+kdvXMOTpPZCALbCOVJJVCq6H1A1cGD/UsSd+D5CPPRG1rkm+wlCA95
         EAHfGXIq6y+ND8MNi0BTXMYt9FKpobuM+pTrVkqXrkCgzL9r2igxNU6nRL3jSFBxt6m5
         N9/slbe8n54RJeU39/8JYG17KamHXzqncvtUiJFkPXk3LFQVLPmDgJyaMct4JKS9QsUN
         4brIcpbmjBOHEz1wayF5nmH2kt/YvI9LjmpSPZBhB5EtYN8c7PQWAtHkIDOJq7PSXCW2
         A/YNedzHv5oo6pOvHNXW2uInBA8lGMPhDT2o8cYVd8LyT1jH0G9FXQdzFMIXC4I4gyVf
         kJFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JdZ6K4kNr/+E24ONRR2e0uXWlRu5bet64EX/2tf6xTxiQ6Ies
	gi8zZFOyg54xmdDxWBkBFO8=
X-Google-Smtp-Source: ABdhPJy24m+JM3pVlf73YRoxoiNsJowYf90MUgBo11Mk1EL8imtA3J8J7L/3le6dYSlpJWdxh/3DBw==
X-Received: by 2002:a05:6830:19e1:: with SMTP id t1mr516908ott.120.1603337329311;
        Wed, 21 Oct 2020 20:28:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:60a:: with SMTP id w10ls112947oti.0.gmail; Wed, 21
 Oct 2020 20:28:49 -0700 (PDT)
X-Received: by 2002:a05:6830:1f22:: with SMTP id e2mr487931oth.339.1603337328999;
        Wed, 21 Oct 2020 20:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603337328; cv=none;
        d=google.com; s=arc-20160816;
        b=BoXNsfxPQVuJY6AKaBujBX1RDlxef/ebZpFjpY308Ah4U33frXz5j6TOIADXCy7Kqj
         drdNs08rY+BCtz7PMg8Qovr5bewRLHxJrpdxMDLKPUilXjiDMPNHS2ZKxSPUH96xkg5h
         D2NxrT4/cIoR9D6kfgy6hkd1gBOA6WZnFlfP1jDgb9PJspeunBwB+2ThxGkJcCMdpeAS
         HSj/BJ35krt10ss+uiFEg6SA4jud1Z/BDUvDj7DiTOsGqY7u1D64bSms9DlZahUcFvNx
         YhyCds/4G95y7Fh3hGw8Sg6wzrkvc2doTAkEd5JjgcgDkTRCd1GGWAMRG7yE7f+ACTD/
         OBKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=lF0uRgfPgmDTY4E7k34qUb8SbRtEgKBfMs4QnQYXjn0=;
        b=0LQc4aWubRTBS0dCUkaXyLijk2u4AKdwkubpiu0CiaD248woCVeBCsjECpRdQAAURB
         ZadoQSDcfc0mWRHSfmf+HtY5djSOVkcmxTij3FXES+DcU7v4sT0d92zXTtdQaZ1MNgFv
         zZC4iFR2LVATmHzb6zegANZojgq6c0FnFxvHooBt9o6Xenm7YJTm2hwGt4edWUcVSW6V
         0X42SUYxA6f2I6rXhCjbbMNp/YFWjLifXLwGz2kP9ybJhFN5b0YnUrok46hAOPE9Qjx+
         OZ3ITRAD/t1u0OZC1jrcBlf8lim/AReHQVmzeamgt0vfq3t59/2g5bHcIW2D28v8kmI5
         nSGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=m2a4Af1r;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id o22si36091otk.2.2020.10.21.20.28.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 20:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id l2so244702pjt.5
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 20:28:48 -0700 (PDT)
X-Received: by 2002:a17:902:bb8c:b029:d2:2503:e458 with SMTP id m12-20020a170902bb8cb02900d22503e458mr729191pls.18.1603337328342;
        Wed, 21 Oct 2020 20:28:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g16sm171892pgm.38.2020.10.21.20.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 20:28:47 -0700 (PDT)
Date: Wed, 21 Oct 2020 20:28:46 -0700
From: Kees Cook <keescook@chromium.org>
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
Message-ID: <202010212028.32E8A5EF9B@keescook>
References: <20201021225737.739-1-digetx@gmail.com>
 <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=m2a4Af1r;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
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

On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
> >> The vfp_kmode_exception() function now is unreachable using relative
> >> branching in THUMB2 kernel configuration, resulting in a "relocation
> >> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_exception=
'"
> >> linker error. Let's use long jump in order to fix the issue.
> >=20
> > Eek. Is this with gcc or clang?
>=20
> GCC 9.3.0
>=20
> >> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input section=
s")
> >=20
> > Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing sections")=
 ?
> > That commit may have implicitly moved the location of .vfp11_veneer,
> > though I thought I had chosen the correct position.
>=20
> I re-checked that the fixes tag is correct.
>=20
> >> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> >> ---
> >>  arch/arm/vfp/vfphw.S | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> >> index 4fcff9f59947..6e2b29f0c48d 100644
> >> --- a/arch/arm/vfp/vfphw.S
> >> +++ b/arch/arm/vfp/vfphw.S
> >> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> >>  	ldr	r3, [sp, #S_PSR]	@ Neither lazy restore nor FP exceptions
> >>  	and	r3, r3, #MODE_MASK	@ are supported in kernel mode
> >>  	teq	r3, #USR_MODE
> >> -	bne	vfp_kmode_exception	@ Returns through lr
> >> +	ldr	r1, =3Dvfp_kmode_exception
> >> +	bxne	r1			@ Returns through lr
> >> =20
> >>  	VFPFMRX	r1, FPEXC		@ Is the VFP enabled?
> >>  	DBGSTR1	"fpexc %08x", r1
> >=20
> > This seems like a workaround though? I suspect the vfp11_veneer needs
> > moving?
> >=20
>=20
> I don't know where it needs to be moved. Please feel free to make a
> patch if you have a better idea, I'll be glad to test it.

I might have just been distracted by the common "vfp" prefix. It's
possible that the text section shuffling just ended up being very large,
so probably this patch is right then!

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202010212028.32E8A5EF9B%40keescook.
