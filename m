Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXVWS7ZAKGQEJTVQV5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E72015CEA0
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 00:27:28 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id b10sf4031508otp.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 15:27:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581636446; cv=pass;
        d=google.com; s=arc-20160816;
        b=blsm8Y3md4kilSeci2oe3ZLX1bii9L393eGuna0WvujHs3ub4Vf/Z0u8DOSCh4yu+B
         kdMG1yfr1Y3c4v/eIOExg7syFPVb0rz/yETzBhjed/ngM4nT+rpE7MfdbzsuOZW/lG2N
         tNdiZntl33bfutAKosQiyCvhFyw7CA+o+yadpbjbv2jFwoj6SUYyyM696POSanJGIA6t
         5EfoyyV81s12K81v0p8k6Av8sys9+mLb/5c2Im/3Po/2e+8dsSNgTnDqW5APrvs/nr/J
         +LieTmfThpL5VywhleI3V7zOow1wk1NAoVMJpTYlaz/ANReGuE3TKDv4mR3MYnM3Pa8Z
         X1Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=PtMIwQsUhj/qATh+GReWhAWLroHIFE+Wr9HHRBhtoYY=;
        b=o0cmEfVVQCFJSgkYJmwdDRjjcv7d3uflDf1fXUr+eMfUhCvdFcY51z+lpxPkE85MLP
         +ZqaANJ/iClYjTz+oujDJZkPdqi5tKzdKCiaHPNzc2DPcKpNLY7YVs149x8b+ICj/1nT
         iAYFQw0RM69L1vf/ghqfdev8O16xvIOcyKsXJvDeh5oqRLtZJUKsOeP7lSrkq6ffjUuZ
         fa76Pg90Fqq0RQK/VKISLN99d4272rAxkf8L6P4xZbpgp7U9XmF193wECZmwR1hKsS5l
         74Vj1gUPjcOlGb4JCYeHDMIk8hzeGmWQFjgizDTr3f4CVTvMBdFbSYmcV61+M2TMF3SO
         s3dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tSgExaGo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PtMIwQsUhj/qATh+GReWhAWLroHIFE+Wr9HHRBhtoYY=;
        b=q4F0reiuWGiPHR9m311kr+8P7xKvd6dOz9SI9dacpCGkl5/FyCJ6QJuF44lk0F0p8k
         4zKHz5dVL9jwtQnAzLFnNvEsLgO0xLeVWKjs9Co5/BAmz/+Z5pgjjcvo4lfgWMIJuNsc
         SkeUuDGFjN+5rVDNb+6XaOQMVVHBBhOvkzorGbp7tB5oX3pWCKzlndKDvljyX3y6wHSE
         BpWnUZyNMn+Kt7PFBeR70s9cr695c4HVo4wMZjIqMkPWP8XdhaNzCXigKipivIA91bFC
         /eZAI63d59Gcj7Ly6cSo0BuWWrpDKIU/ptvhfO3kz5e8Wp8t0ffpnWRyDmCnckKS8zzL
         3Weg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PtMIwQsUhj/qATh+GReWhAWLroHIFE+Wr9HHRBhtoYY=;
        b=cF5cRIRO58yDrrX//1EmQTw+hvNYgEtJDosrI8d+41Fon/CohNxCuwDh/v9A/ckHAt
         aQg0+wO7src0UatMCz51aKlf3+zxGEPXDm6pb82WrhbIDcdGOzr2Mk4JK8lsyd3RZZy7
         uK6/unuxzBobDY7H6/iezGjzi9he3N99WHQB5qsO9PwUENQAg2y/UPWqL3B4Q+1A1Mfl
         nf18UPUmj18KikfGDEkQUHRCnD8cmUaHNy1GVsO3wPSUW3oSao+b3zk1BFQ16zMZs+rE
         54N9po1HJS0j8dUgpvLEXDRIgQMb/2Ut6m7V7zPmgqsgrj7kN3adJl99vNJuL12MtL2p
         VPMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PtMIwQsUhj/qATh+GReWhAWLroHIFE+Wr9HHRBhtoYY=;
        b=hIOYh3cnisUZ8rf0O5lE+0fykagtHZ4aS19e/MV6Wnm1rX0M8t4LLzjV3hlaVVBJ37
         Unqo+u12fXQ/2xB1igdhDon6MoajRruUu/5hnIxThpA2y1Fx1haxI/0abB1pgX2FuYGK
         SiH3qLsC+ADnjSoLg4XPMSZ5UmcZY9YbbfzwSzCstnzCY24BdGA7JXFZKZEfC+XJvd4J
         C1HNJNcQgBP6r0bS3A2vmVaPuwUnsd0/9m5lYG3ca1MKmmJANhkR1shvhdATNAGyrTtQ
         ztWdJKsQrnNHgzc+VY/sr55tgXKxocuwc88VAfPecy2PC+Ibw7Vm+RwEibl9iuAYHXpu
         dNVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW/z0JnDSgZStfcaClLejYcnUSDaRcG3edF4gdiuf+jDmQJhP+j
	Iomhyuqz/azNgzE51EfP54A=
X-Google-Smtp-Source: APXvYqwRy7FXLckr505UCjcvSt95vkCJrmNxML9AWmy8gh4h4ZFLnir7noNm1ELE5zgjeHu/v+vu/g==
X-Received: by 2002:aca:ebc3:: with SMTP id j186mr17937oih.15.1581636446478;
        Thu, 13 Feb 2020 15:27:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d549:: with SMTP id m70ls9613oig.10.gmail; Thu, 13 Feb
 2020 15:27:26 -0800 (PST)
X-Received: by 2002:a05:6808:b1c:: with SMTP id s28mr46841oij.2.1581636446176;
        Thu, 13 Feb 2020 15:27:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581636446; cv=none;
        d=google.com; s=arc-20160816;
        b=FXcHrrbrqhFXA9qEpDLRToQyRBIVcpNv+S+1Tj/iYCLG6M8rHh57JJyaYLphY8brH5
         za1V9UmbqxA0Zzsf6qyCCX7ccpoN43Fanj7kDpM102mX2TdAcvVMKZTj0Knu355kIPiZ
         uTBxj40s9MvkUdOlR+8Msv5j06r4TCdd5j8ObWrBhvmcXkf2g8HW0OcIdNdxv6przzfF
         ZAhEwg+vxRcp9ycBPA7+EwsgSmw+qb1hTkNbKrUUwPdrbPZGmWGnlS/sTclId7zugVo5
         /GGsbPxdM1/IbMaIIU7Dblr/c8SxXTrpdq8J+BPUx7BPDUS5far3W3R8CPKcC14lTyUQ
         Vk3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=phnCn7mKlZPWUI9KXkv1lYA4R+8w6RQ/h4tld1EHfzY=;
        b=wHeabKpgxR/HuisdXT8nEyaO9trPC1KK4CWVfasQVf6GjJnQKbzw5n03Ff2+Piw8YG
         aHBu6ffkxh3AFUI61iQgUO8FFuQfN84kjq0yupftAMLDbr4zFyG5RkDBiglbe2rkHopN
         0Sw6AuBfXdcQ6zZwMskUmuS/AoM/CUx5+HEfqlIMQUs0G/iYztYzyBKkted0EKHdwiJE
         aj4nBd4Tc0iSR1uuDo8KIjM7nF8t+/iyMFFL0tyoznohAofPt9+gs8YJ5TNNVXrELj8h
         TFAIi6sVCDb7ZeF98iTtFP911N2b7jHlyfuN/+fcI1gFzH5pjOgyHlGZbFirsvQ77uyz
         /5fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tSgExaGo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id j15si245498oii.3.2020.02.13.15.27.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 15:27:26 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id v19so7619538oic.12
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 15:27:26 -0800 (PST)
X-Received: by 2002:a54:488d:: with SMTP id r13mr5819oic.115.1581636445805;
        Thu, 13 Feb 2020 15:27:25 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c12sm1291127oic.27.2020.02.13.15.27.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Feb 2020 15:27:25 -0800 (PST)
Date: Thu, 13 Feb 2020 16:27:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
	intel-gfx@lists.freedesktop.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	dri-devel <dri-devel@lists.freedesktop.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/i915: Disable
 -Wtautological-constant-out-of-range-compare
Message-ID: <20200213232723.GA26697@ubuntu-m2-xlarge-x86>
References: <20200211050808.29463-1-natechancellor@gmail.com>
 <20200211061338.23666-1-natechancellor@gmail.com>
 <4c806435-f32d-1559-9563-ffe3fa69f0d1@daenzer.net>
 <20200211203935.GA16176@ubuntu-m2-xlarge-x86>
 <f3a6346b-2abf-0b6a-3d84-66e12f700b2b@daenzer.net>
 <20200212170734.GA16396@ubuntu-m2-xlarge-x86>
 <d81a2cfe-79b6-51d4-023e-0960c0593856@daenzer.net>
 <CAKwvOdm4eS19-D3pEkKsyZw7VjJP9Jeh5gMZaszwgjrJe63yUg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdm4eS19-D3pEkKsyZw7VjJP9Jeh5gMZaszwgjrJe63yUg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tSgExaGo;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 13, 2020 at 02:43:21PM -0800, Nick Desaulniers wrote:
> On Wed, Feb 12, 2020 at 9:17 AM Michel D=C3=A4nzer <michel@daenzer.net> w=
rote:
> >
> > On 2020-02-12 6:07 p.m., Nathan Chancellor wrote:
> > > On Wed, Feb 12, 2020 at 09:52:52AM +0100, Michel D=C3=A4nzer wrote:
> > >> On 2020-02-11 9:39 p.m., Nathan Chancellor wrote:
> > >>> On Tue, Feb 11, 2020 at 10:41:48AM +0100, Michel D=C3=A4nzer wrote:
> > >>>> On 2020-02-11 7:13 a.m., Nathan Chancellor wrote:
> > >>>>> A recent commit in clang added -Wtautological-compare to -Wall, w=
hich is
> > >>>>> enabled for i915 so we see the following warning:
> > >>>>>
> > >>>>> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warnin=
g:
> > >>>>> result of comparison of constant 576460752303423487 with expressi=
on of
> > >>>>> type 'unsigned int' is always false
> > >>>>> [-Wtautological-constant-out-of-range-compare]
> > >>>>>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> > >>>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> > >>>>>
> > >>>>> This warning only happens on x86_64 but that check is relevant fo=
r
> > >>>>> 32-bit x86 so we cannot remove it.
> > >>>>
> > >>>> That's suprising. AFAICT N_RELOC(ULONG_MAX) works out to the same =
value
> > >>>> in both cases, and remain is a 32-bit value in both cases. How can=
 it be
> > >>>> larger than N_RELOC(ULONG_MAX) on 32-bit (but not on 64-bit)?
> > >>>>
> > >>>
> > >>> Hi Michel,
> > >>>
> > >>> Can't this condition be true when UINT_MAX =3D=3D ULONG_MAX?
> > >>
> > >> Oh, right, I think I was wrongly thinking long had 64 bits even on 3=
2-bit.
> > >>
> > >>
> > >> Anyway, this suggests a possible better solution:
> > >>
> > >> #if UINT_MAX =3D=3D ULONG_MAX
> > >>      if (unlikely(remain > N_RELOC(ULONG_MAX)))
> > >>              return -EINVAL;
> > >> #endif
> > >>
> > >>
> > >> Or if that can't be used for some reason, something like
> > >>
> > >>      if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
> > >>              return -EINVAL;
> > >>
> > >> should silence the warning.
> > >
> > > I do like this one better than the former.
> >
> > FWIW, one downside of this one compared to all alternatives (presumably=
)
> > is that it might end up generating actual code even on 64-bit, which
> > always ends up skipping the return.
>=20
> The warning is pointing out that the conditional is always false,
> which is correct on 64b.  The check is only active for 32b.
> https://godbolt.org/z/oQrgT_
> The cast silences the warning for 64b.  (Note that GCC and Clang also
> generate precisely the same instruction sequences in my example, just
> GCC doesn't warn on such tautologies).

Thanks for confirming! I'll send a patch to add the cast later tonight.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200213232723.GA26697%40ubuntu-m2-xlarge-x86.
