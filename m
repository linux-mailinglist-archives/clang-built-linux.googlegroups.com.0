Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB3V3RH5QKGQEY26BNAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 6136826C864
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 20:48:15 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id a6sf2591732ljk.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 11:48:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600282095; cv=pass;
        d=google.com; s=arc-20160816;
        b=YrCin37po0P9LzV1AP9I2xIsQdLW50xkWdS6WLkmtJGiSlkzt1uTtldooBRSmD1FOG
         WVa85YZdFvpdImTmaBpALICWxyEdlBKzOrkzd9Z3MNOG30uaPPuF3Qhn4s5ADr99ugp9
         Cm2vF09at8yAHf7pgVxk17ZAar97yxM9VGHU9a2s0jRXn2J4J8vVc5dY0/QyhGIdH30N
         oRBPAiTa9gxHrklnLeXQWCiHFHWMW4MYhRpsbdu0Mxy6v9ySW9tl/RHfeEN1vAfqMoGi
         mM6HsH+RvY8wCRKT4SyHkPqjU70mtMtUOFK5kkLKe5Widgbd4mwQBgcQ8CJTgijXTKn9
         WGBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=z5+cEVSsfzn5k1JITOQrk7CRBgVmUShegqaUf/7toEA=;
        b=W1MzeDoVnExCm4MTgmfSMLaK4Ce4A0STPINmFuRUob9Xkcqx5C//pywxgQ4xUi1M1N
         6S0VtsK0dCwSHgQGfYC/+IzGGnQc1Hqfk/fKMeFVOG5Xtt5khIb95C9y9k0f6gCYfgrH
         kib0aozjAI8AAkFdYZFvUd9eQgPuPWy4YOsP7FNuQwn3asvRSQibAk3TxG26l7Ghlphq
         F2PZMKcpAG+UuEb0JhPMhNhqEZzpUA7+qKz4yYoBozx+VclYx0SxShU3XdkRYPmAAwjh
         p4Pz7k04uf4x75KPjh55ap2gBd+SSnCmfqdXllvlfSjSYGD+lH0/F247T/nTPe5xJMgh
         4m6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ejuT2d57;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5+cEVSsfzn5k1JITOQrk7CRBgVmUShegqaUf/7toEA=;
        b=GWSfbGpZgkDfVUFyzZTrN5DWyCwlbw04k3CeKmJWM+ErbOkAq6SZ+pIyVFVEIJujlT
         544V+IT/DVtTnpXbxOS2Po5k2zQ0N0xyC9wWdne1jRgsKJWQowaV3NS/S/VhtOczNfAy
         yOFSFjh/V3KCgOHBSomIwbkWUUK7Amw+7kC2Yb5hMm5SLjAaV1HV6vCjv7V4aksRsF8p
         sCMgOlZyi7+7aopVzb9jfdeb84eZCECiml+T+HTj0QRyEMZIyXPypfOkChVUDDXFCl37
         iSr6zLRkwXGMWAiofCKeGhM56lM0NaIGE7Y54xQO6R203RhYcCG8CmbkrixuwU9dOMIw
         6OkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5+cEVSsfzn5k1JITOQrk7CRBgVmUShegqaUf/7toEA=;
        b=gCgOBPENO87bkLe5t984ySuuzvzE+AahrL2ErbLnuJIGMjtGWFsmxrr3P84zKgj9Ic
         XHHjbelUvQyz+Y7zwxSMlRGrhmAhqhJtRr3UNuZYem8ET/fn1u/FP59EaIrK2D5M3iAG
         mtZQCdVfajKYMGxKVwe7LDY36INRn5oI1Cblyy7J0WBDggyRjgoZiDXtfY5MfKSGxMpB
         /Qp2MqQGhrYvGo9w0K9z2AMWn5+xLgKDvvYt7L/6tKTOCMO3PsuWvUTT0YUKsiwI+R2V
         7rlxRdN/Oe53NPs4fUscnkZZcNqHloXvq0+xiPp4uGgdy+QJNie+xeVUI3G5nrrjsg5A
         T9sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TVBshGBzXuk7I7+EUi2p8RTra7WCsoe3pOh9DtLVotZPhxqIN
	193IkBgmi3g3yHVdorwlgAc=
X-Google-Smtp-Source: ABdhPJw1n4mqjJP7Zf1AyIabDJE87TyBE6uStsliFgQ5Fn+5mtRMXP5q25/wtAj50hn4v7jHUCloow==
X-Received: by 2002:a2e:9743:: with SMTP id f3mr9833382ljj.310.1600282094954;
        Wed, 16 Sep 2020 11:48:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:544e:: with SMTP id d14ls422056lfn.2.gmail; Wed, 16 Sep
 2020 11:48:14 -0700 (PDT)
X-Received: by 2002:ac2:4c88:: with SMTP id d8mr8955109lfl.445.1600282093928;
        Wed, 16 Sep 2020 11:48:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600282093; cv=none;
        d=google.com; s=arc-20160816;
        b=lHoTsvuNA7lJIzaF3DztP1uJuwZRj9euowR5womG+/sdPLDNdnMbNwqvwaLGhNovfG
         YXHgyntdVQXIn8HNoilozdZBfcyGIg+/TfkaV0luxR9nNMr+tG+ScHYqJAA1vbOY1U21
         ZjOim8xmU1xVbZI3Y33Noy+54zhjEGm41iBFy1uZiwegg0V5zRNMglw5uNwGhQ0hU4bW
         SbimHdY/f1WC50Eb7O/ijVZFOyBuOhzHYg5z45UTSrcmszp4n9dAt1CVdp4Y4mFmK/X1
         RwhDo7PwMfNOWCAEAdt/ddZGRaYfICt5earHv+ASLPrJjtetrTcC3HYjM12adjf8htLM
         bFLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=5BUNm3OyFKLbQvPjWFNGky2tnyyTQWNxcWS/uGxVfZE=;
        b=aumOZgM8oWTyWa0wrLV2tGXrUKhRlY8R0EEJ3TQS3Od/3GWfMJt6qhFyYC3+q5SyZE
         JI/0wU4gXNM6oJyG3tuMSumIJ/MoqmmhmOp9rbHpnRQQao3Oh44SJsJs0dK+sbnkjyXm
         0Bj9ahrKgVa8g0qZo1rMTotzth/jgqXfq3SReSOUxTSWu3pmH8oOMcVYXewLw2Z/vGlo
         K4T9VrinMIRtFD7OBYV/IU63aMrQAegrarz58ZSZu6QNrE5asr/sMnPQ3J+AOuhiRp3b
         UfRPCHx3O4dDiXO5KBQXYsR5Q35GfevnjsYnFxm5qhZtI3SdP5/2K0tWipX4YiNk0WrF
         cGyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ejuT2d57;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id 14si548541lfq.5.2020.09.16.11.48.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 11:48:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0c3e00d1c41ee080a628ee.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:3e00:d1c4:1ee0:80a6:28ee])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id D57441EC03A0;
	Wed, 16 Sep 2020 20:48:12 +0200 (CEST)
Date: Wed, 16 Sep 2020 20:48:04 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Marco Elver <elver@google.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200916184804.GS2643@zn.tnic>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic>
 <20200915215054.GA1104608@rani.riverdale.lan>
 <20200916113449.GH2643@zn.tnic>
 <CAKwvOdkjAHv_=+167x6paXpO6QsEEPivZd=tj+WGpzg+pKjgtg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdkjAHv_=+167x6paXpO6QsEEPivZd=tj+WGpzg+pKjgtg@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=ejuT2d57;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, Sep 16, 2020 at 11:28:26AM -0700, Nick Desaulniers wrote:
> pt. 3 https://nickdesaulniers.github.io/blog/2014/04/18/lets-write-some-x=
86-64/

/me adds to the read list.

> ...2014, jesus...
>=20
> "But you never can tell exactly what the compiler is doing. It doesn=E2=
=80=99t
> always come out the way you want. Like a dusty pane or warped mirror."

Fun quote that. The rest is also very entertaining...

> Seems I'd learn more about that than I'd could have ever envisioned...

Thank <Deity> there's inline asm. This is also why we don't trust
compilers, not even when using builtins. :-P

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200916184804.GS2643%40zn.tnic.
