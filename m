Return-Path: <clang-built-linux+bncBDRZHGH43YJRBA6LRD3QKGQE5NYH7XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7341F67EE
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 14:37:24 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id r1sf1295014wmh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 05:37:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591879043; cv=pass;
        d=google.com; s=arc-20160816;
        b=wLMtbx7nHyi9JRrQ4HRhKX9Fxn/YUtb9czSAi85ktw6A3LelVt8VqNAPIdkSemE8T+
         MIcqPhwmhbztR6O/DHZvHdQthY/8ipo6f5ore4uZ3FfqrO6ujBZBfKwe62JI+8i13emG
         /5W0UWyn4QFdcjTBAJd7FqA24JgFRs6uTpn/PRqHAMN4clvZB0SDV4Q0wPj4TEABf9Jl
         m03JP+CWAIOq1vGy8cRJ509+m6/RYzk9xVggAcyBFRnhooIUjLyFNhLtPiNRNhZAJWnb
         entEm/HA4nWyXuqTfseS2AEfFz1Z7Jowi8XPLT9zVNIVhMnOzkEKu5DKHJh8TussJQUZ
         3S4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=f+qik1dIU59UelF6U89l4y9EjsL+Ug1Gffxdt3s+c7s=;
        b=N6gIvLb0cVwMr+awuclz3x4PBys70sfAK60CI5V2dJSBWNEze/QyqjPsh2L0wZdioo
         FBsrt/lyOicBqpiBJUcCBxPCmNI957lM7UbcBrv1/Y0dFoVVmuqIqSthM8xgFH9frF9F
         UOhTs1SETgKuSKHoE+P+GClTSA6U5nNTtUKk072dqFR5Zwej/47sVi68ULLHnZTrpvF7
         xLpIeXPZaqnMainfsC+jHrozQ6nH9taPes0JmCJJ+LraCRKxgWlg//4OESBKMWw7CRUu
         uUQHytJbVNYJsKWrI340QMqEroLWv+eKZm/TJYakZoycRrbgRA8WT1ouKAaY9nwi86hE
         vNIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMjDEe9O;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f+qik1dIU59UelF6U89l4y9EjsL+Ug1Gffxdt3s+c7s=;
        b=WroL7HpE4jdk9RP1vI7UkdR2Y/QO2lqkd+B1fB4U2bwIUepsQ9P4LmMwiRJWuCDLfb
         ycKgRuiUWBhJIuL4GSEqZOglwiaplUMEctMKtt8xOzzVgT/ZwCPZC8qN6SshFFmh95XO
         eOtluBVM1Q54Qo1jHIdsM3tzNh7lYDB1atnyeS6ZxZfOWHp8ov8bWy3wk57EN1s1KXev
         yp7VUnf+OALW9uosC/nuW1bgwAWJE2PwqeaP3Scxok294Bc6PTejln2rEsXH7IlAg4T0
         +6mDQgj4a4NAxdJO+y1Cd3LwFPqLQl+Yne905rCrk5zO1s9PeUxFwt5+H6q+EW8DAcem
         ZmQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f+qik1dIU59UelF6U89l4y9EjsL+Ug1Gffxdt3s+c7s=;
        b=A4XlTDWq9Vgq6CBR1FM+7vlwAg1lt7jSx5Cm03bn6BcJp0LRghFwCFpdxnIzhSHMlK
         44dlQc863XbvuANg1h+AH8fmMnCCW4LdfGQaFJvlffOqzJULVn4/UE0cCUi2M6JKYcgc
         yyEnJvXdvf2dxjRNuVdmkYKrIu4zEUYHe23ip1W4lYjfeXIxS4Cmb1ap5dOQds49T0gk
         YIzLZort24kqHocqwoxnkHwyraOg9DAMbG5uIUbvpFFJ5pK4eB78/Z1KWfuPijxVvRrD
         tf74upq1E49K0LED3K7FwuqZZXUOpBGYvM2bSuLGTn3FmkOqEtA0L2skwEG2chBNtejt
         Mx3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f+qik1dIU59UelF6U89l4y9EjsL+Ug1Gffxdt3s+c7s=;
        b=eoawMMVUN2DZJAp56Hcp8k9nLhO+Dx3D0KYELUOQP76v63jcmZgZ6oIX91mg5Vi8Tp
         bfJsBxkaypYZSZitZ0ASj30dnwCFzZxNWbWMhrXN/Fy/KNX7BuVMXMiKjeOjVVFTN9UH
         be2OlX1heie2wPqpOq5I3qxBkC/G5l+Ph6qC78qS9AVVroZQMGwqPlx/XayUyFE0/xdI
         jTF0gK6LmgUbWxMenv6CfDFldQOBHkdkmc5qGmYZJjyfDjlXF/49kqqTOveV1CYY6N0m
         EWQ7LoXElrFwAg+KvH6SAPjAtLgwqda8XtCOkpxdLbY63JEanu2A4UnZHn+s4zzUbpZP
         MZ2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x+TZF2NcptePfT3wnsDiM/4Wiq7rD9ZqBJW7mF6LlwgHrrkRD
	z9E9kGjM5zdVS8GdN+KAmKM=
X-Google-Smtp-Source: ABdhPJyem6siR7HJDa0PFESffEatOTJkijpv3uuxVtJh++/DjdJreC2HJwItJ5pI4cfbD+9lV9mccQ==
X-Received: by 2002:adf:fecc:: with SMTP id q12mr9567794wrs.135.1591879043807;
        Thu, 11 Jun 2020 05:37:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a70e:: with SMTP id q14ls961630wme.0.gmail; Thu, 11 Jun
 2020 05:37:23 -0700 (PDT)
X-Received: by 2002:a7b:cd10:: with SMTP id f16mr8190957wmj.149.1591879043341;
        Thu, 11 Jun 2020 05:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591879043; cv=none;
        d=google.com; s=arc-20160816;
        b=io6P3UChNiCBzIL/mQpreVzwUPRu7ulbvi/V6Ep1QZ3rIHv1FD0HWjRaaSgPS32/jH
         a+vFM71FTKQxYJK6IGp/ssELboHec03PVNz7iiP9OwiJUFTJojJuLBtL7q/5diLhlwFz
         O8CEv8AT6pFD+mUC4egDHvStoQRfpA72Ibo6yGVcNIF19q+pvSsvgBEo//bUa9ojqfq6
         qJ5pr6W85hu3w+Ld//R8K1K574BaUY4AVrVAzKvq0nTDiuWZx9WBrPKN4U83J2B7dDV+
         F3j3cP6QRQkNJ46JkUOdc7o01rvNjSQz9j3AMG0PMIK02jhiM58IWD8S2pdm7pz4RE6p
         bThw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n7pw6B9iRk8cxXinJlBDcvCUW06xNfgnr8zarLwpvFs=;
        b=MLAUFwYufFyOr25U/b+7WoWd8IEG12Ru1UFVjgfpSXvCI1ZGUZQ4qOuUCJMNCeaqhS
         7DhCLD6LMGOHoYPYSpVwBgWALfphdj5+10o5XZbVLOkPL+0pAkYXOWIjos+9tRe88vqR
         s24GqbIZxZnwgmO+b8Xh+O9jpcSRFXsXQkk3I1opu5xzCM5PTl80UahwwFPhHqHe1//E
         oFNPBfTzCAZCYdc3Rb/NI3Uu0KtncNaO4CDDXwrPgfa96E0SnPxGbdUA519uDXynZFF/
         98AO2dm5PDNrHcf5NFx/WJ2RoNtEnkZQowQ0oQM7HtRh3hUBvidL37eQhU+PGA2GV1f+
         0t5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMjDEe9O;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id y65si449597wmb.0.2020.06.11.05.37.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 05:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id i27so6664296ljb.12
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 05:37:23 -0700 (PDT)
X-Received: by 2002:a2e:9b04:: with SMTP id u4mr4593898lji.364.1591879043027;
 Thu, 11 Jun 2020 05:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
 <4235548.LvFx2qVVIh@harkonnen> <cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
 <202006102009.CB14D7F@keescook> <8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
 <CANiq72n50OVRtFAQkAmqjaj=dJTP9VqYYHN7++8O_t4cbfaJgw@mail.gmail.com> <3a6354fd-90ec-914f-b5df-0c4c219bd26e@al2klimov.de>
In-Reply-To: <3a6354fd-90ec-914f-b5df-0c4c219bd26e@al2klimov.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 11 Jun 2020 14:37:11 +0200
Message-ID: <CANiq72=-B4SJvo5kgyUbmBJho9625Pp6SWjki-TRhMfpmj0wUg@mail.gmail.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/translations/it_IT
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Kees Cook <keescook@chromium.org>, Federico Vaga <federico.vaga@vaga.pv.it>, 
	Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	David Sterba <dsterba@suse.com>, Randy Dunlap <rdunlap@infradead.org>, "Theodore Ts'o" <tytso@mit.edu>, 
	"Darrick J. Wong" <darrick.wong@oracle.com>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
	Jacob Huisman <jacobhuisman@kernelthusiast.com>, 
	=?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, 
	Rob Herring <robh@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oMjDEe9O;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Jun 11, 2020 at 1:02 PM Alexander A. Klimov
<grandmaster@al2klimov.de> wrote:
>
> Who if not Linus shall review one huge patch spreading across lots of
> subsystems?

Even if a patch is tree-wide, ideally it is first ack'd/reviewed by
each subsystem maintainer. The overall idea is that changes are
reviewed by several people. Thus sending patches directly to Linus,
Andrew Morton, Greg K-H, etc. without previous discussion is a last
resort.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3D-B4SJvo5kgyUbmBJho9625Pp6SWjki-TRhMfpmj0wUg%40mail.gmail.com.
