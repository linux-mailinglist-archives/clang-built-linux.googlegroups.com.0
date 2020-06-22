Return-Path: <clang-built-linux+bncBDRZHGH43YJRBQM6YT3QKGQE4EFGS3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 084062040D5
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:06:26 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id 28sf2424879lju.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:06:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592856385; cv=pass;
        d=google.com; s=arc-20160816;
        b=P4680ckDalMJv9LbzHTa3Jz44kybPdyBykpwsc0DtNYqrrtxgmQ4+ap9rwl7WEYLdS
         QgNU+9cUKC0JiATKunOaH82fsFbzSeTA6h+z3MvtcEKofyewLGr2l7cTKcCnyvkRt3zG
         IM22hIqiNmVmZchi0Fyt+EBDRrS0/9qB6nWqY3n6x0CqybZr8jlMT8jjUMfmRZYqILuZ
         Z4ltjCo9MXspcEQ7xcGrdtkQ+aMsjcOXdhD9T49Fgmnyxekz3yAEre6kszxX9ytQRi3f
         7t5qd2rNxk+tLdbyNIg8fvWMsMmfel6ZQPmWntO5tdEZGjWEwk66P4uWZLqkf9Yt5298
         ygBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AZ9JB86aaXMNQk6S18UK7oPZQQCdKXUzkvwplCzlV+c=;
        b=y2HWNICE8BP4fyeR9fOVPwwq2aAXBm4Yfp5UfF2b9VZyz4rAi3aeJG/hN7AZeNZMaa
         k0u90OYuJ66qo97gUSFEyKmUe2BX1B4wBuEbfXuUrxPxCLOkzNvLYwpGPiu14OQFOFvt
         yzzDMwSJHwNGMI+FD/67Y/f329ONRFrwAarb3em45dnLO8IDbxYPMOQe7wlGXTc6s4CJ
         c5oYVTSM6y/SG3ASHAOJmAnk76IAIRndovnLaJtHget89Fhpr2wTZjslJUr6zKD/V6iA
         g5YUn1Wmy+smNtHVhSopzc+GvT/itFLziKpkQderWRB/FmrIPikluilncd7gDfNZLO37
         +A/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwPu1Itn;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AZ9JB86aaXMNQk6S18UK7oPZQQCdKXUzkvwplCzlV+c=;
        b=QchHIRpTmZkQlnG6WabD3iWg/T4AsvID5q1KxWk+7a0hcIECM3VxNp3n1C/21sQvB2
         2fmIJPhKYulcsAjPE2xd116ZDOeRv54U06xomf+XoWlb5AotgsE/rD9Si0V6u+uN/+tY
         h66h3OJw4FrFAQCEIQ2aIoGxCGtRgcYSgMHH6LEFScvh4gu//F3/x6uOIMG7tLonRWi1
         ewT1wjaZbd1uhNPFyqhknbpi/2ItZBpaxqGQ/nA4lijLzrTMehgrkmELbaTiOiZoUbqI
         7NaAx0DY9BnrDky928oaDsQIcODJFagW0xCXBEnBioCEj4207b+mJjGvmiaNmC/pGiMR
         9OTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AZ9JB86aaXMNQk6S18UK7oPZQQCdKXUzkvwplCzlV+c=;
        b=EwtMmTPW8FgAuKr+oZS85DE+nFfKS0glxIW4innoahnUj5pvuW7MWfj0ZbEwGT6BZY
         rBEbO5B/fPaBQY7p0xNggY2cyUWcu91gBrx+NIFOOw7a0Rb4sUA7Oc4OBl7pyXnBqGaS
         MGWc0qjeyEOJ1J2ehW7HM8r/fOe4bEu0C7D9FN29Xa/SlFSP2aZo7gVl+L8KlJHs4FmF
         +Kw/+hsm9m1c8w6HXxBOBPivnHLS56yzpMcxi1YOY7yOmnTVJQ8nXxhFIgKT5kpU//gQ
         caMKEQUykCDljOhONDjYvlFohi2mLqi9giOGI34GpKnrRemPvOb/9Lny2U2ZUHP8PXrW
         mv8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AZ9JB86aaXMNQk6S18UK7oPZQQCdKXUzkvwplCzlV+c=;
        b=mIWazP3Ck+QD33tE6Jeb+2e3qi4tomTWTxQRzfPIftuU4UIY6153k3cPx6IcSsp/H4
         vGzWWVEVSLdiXwO4u/qKRurG4F2Zezb4qWXRzC7twnpSKJzeklJKDDHH/LHJU64gi1Da
         WiwueNDftHQvvJfLYBtOKca/Pw+2t+6PxQrEv0Huleatk/Yaofn4JtAbyzr3M8MVodqs
         gJsJZIbWQKCJy00HqoqCNqC39xCRCzvnmt6vcNaG8fQn2GicS55X8mkdRwp1CpghbjFZ
         9f3cfCekbarr5H4o2hv5QAUBdgN4Lb+ncS4H20E8rKAY6iUlrjGh3DqOIX/ZUobin7kc
         UXUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aOcYhGcSJ513jBFXIcuLHrN2mt0CWYzhesJxdUjsBP3+N1ApX
	6DUzFMe05hc8nGiJirqvdeA=
X-Google-Smtp-Source: ABdhPJyyVd8kLXT2Xovv4HPRt4Aky5gy0fopZec08shicCoG1Nv39hfkTXw6v8cMsa7pnn1qXvJ7BQ==
X-Received: by 2002:a2e:b5b9:: with SMTP id f25mr9738865ljn.50.1592856385365;
        Mon, 22 Jun 2020 13:06:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c188:: with SMTP id r130ls2545667lff.2.gmail; Mon, 22
 Jun 2020 13:06:24 -0700 (PDT)
X-Received: by 2002:a19:c744:: with SMTP id x65mr10774166lff.133.1592856384643;
        Mon, 22 Jun 2020 13:06:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592856384; cv=none;
        d=google.com; s=arc-20160816;
        b=CkI68ZQYLx9V3slADNHimLhraCYc9KvCLoupZNs2SN16Agr7adfnxOFg5RAjRwD+u9
         eZKCG67k1qBhguPKnHaVhVjI0PAZDiJv7dBZZnp3yN6ZUAT+e1R4n1Lt6D8W4IpsyxSJ
         +G4MMsvFd7Cg/MEz5+q1EveM37+RwW2hOB6YwpRfPk4kI1ckFohS05usl+a5AvhGhpTI
         1uMUhOJhbDg8aij1Ep0Yy0Ml8hhVBLwfG2+146DPwhYF5YFMoKgGOLhHhK7rK8K3bRXf
         LSUU4QSquZRq1AqVQfjO/SV8ZwtjcUZlXs7iyKXnY4CWfNtJwGa4mexKCsjTADsU+8Eh
         r3zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8ErtUVrdJpAbz3pd9Rfcv2rTfSjq1rTMRt5MW6xhVzE=;
        b=fStVUFLVVyJCX0uLsaencMhlOWhsCt+HrS8E3TWq8EsoizJSuLL6mQhWwRjgf1XrlZ
         FcIc5Q2XZbkJ5gcb8aUVJbn5c7fGM06BOlXYEed49vcQwA1I85xM9R31Gp8T41Fs2mhd
         EsF9gds8c04mtBDP/tVgsE1O2xNgZo5zAcMjJUOGUUaitiwB5l9yXE/i0IRV3Z3BdVYQ
         nccH0ofZxEK8qrPNCNnSdZMYXsWhPH1A7NtHGc1Pby8JaKuemIG6qCqRRpKLNlG4oBDe
         GDFDjeSovcArMK143ERBq2vOjKYlthjvXKoZoDZQrf1ydQZlJSTQo/t17Cd8+PLB1/w+
         gXvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwPu1Itn;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id r21si886622ljp.0.2020.06.22.13.06.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id o4so10372002lfi.7
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:06:24 -0700 (PDT)
X-Received: by 2002:ac2:5093:: with SMTP id f19mr10773563lfm.10.1592856384425;
 Mon, 22 Jun 2020 13:06:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
 <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
 <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de> <CANiq72=Y+beqZ8Dmieo_GKbyaLN8Nf1n3bVntj_o90Cn-nADRQ@mail.gmail.com>
 <20200622070623.086f1623@lwn.net> <CANiq72m6BNYe2ETNXJ2oLc6Jzad6kBBJK7_dz+BwZCeqYFXZqg@mail.gmail.com>
 <adf85348dcbfbf64157e6519115b3a0c9f35df55.camel@perches.com>
In-Reply-To: <adf85348dcbfbf64157e6519115b3a0c9f35df55.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 22 Jun 2020 22:06:13 +0200
Message-ID: <CANiq72mSz+LWLwOCa=9YtzKaD+NjhjZdRdwFiZ-gLMbjYd=QzA@mail.gmail.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/process
To: Joe Perches <joe@perches.com>
Cc: Jonathan Corbet <corbet@lwn.net>, "Alexander A. Klimov" <grandmaster@al2klimov.de>, 
	Randy Dunlap <rdunlap@infradead.org>, Tony Fischetti <tony.fischetti@gmail.com>, 
	Chris Packham <chris.packham@alliedtelesis.co.nz>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>, 
	"Chang S. Bae" <chang.seok.bae@intel.com>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook <keescook@chromium.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Jacob Huisman <jacobhuisman@kernelthusiast.com>, 
	Federico Vaga <federico.vaga@vaga.pv.it>, =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PwPu1Itn;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Jun 22, 2020 at 7:29 PM Joe Perches <joe@perches.com> wrote:
>
> scripts/get_maintainer.pl --self-test=links has a reachability test
> using wget.
>
> Perhaps a script like that could be used for http:// vs https://

+1

Not sure about `--no-check-certificate` if the goal is to move to
"proper HTTPS". Perhaps we can try first without it and if that fails,
print a warning and try with `--no-check-certificate` etc.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mSz%2BLWLwOCa%3D9YtzKaD%2BNjhjZdRdwFiZ-gLMbjYd%3DQzA%40mail.gmail.com.
