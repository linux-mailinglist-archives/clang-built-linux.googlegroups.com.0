Return-Path: <clang-built-linux+bncBC47TRXEZUKBB3E65TZQKGQEHCIBTYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id C37F319220B
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 08:59:40 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id f15sf762330wrt.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 00:59:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585123180; cv=pass;
        d=google.com; s=arc-20160816;
        b=oUIbCMTfAnK0pkDSB2CvkgXegLDBX0zCl2EwQTLN+VzJs0UkZhl4EJTRwP2RiRCbK3
         BbO45Hz5gepP1wDkg5WSN7I+5r5FRkS3Oa14c/J6hRW9rxCdUZr/jIEkSdl1xz+DxP25
         2ttVej+UXH+u0YygnvTq3sC2YYr2WGqjQL24guKH1xw8fT2SBNW7q5XH5DUF02bSW4Bd
         4aw3nVVkYa3GBsohy4qLbZ91wrIQP1TKKUplgYO2NL5GUnuLa5a44CbkEyveqd9GOlVh
         MoAuUEFCwD/M3dq7cQWBjXEAiOgj9uHWDJ4UxjJRZ/fLmz66TUbH4VWM3YmoPaBKm8V3
         UDyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Nex3Gl8g3QO7uIde2uA05ZozO626ebhtc/6e67S5IlY=;
        b=HFhfHcc1046o8zypCAqpu3FvyGvHC1zPDyi22rugzgbfuKKHG569hXQ/QUxF5Oy4fV
         IF1mcEc57+0vda7TWU6Xk89pPpzXla3nyS2pNnpMQEZb/I78gAbaiU5/mxbz27Wzp2J4
         84RVsr4DVAo9RjUY4vGuGJSgjqGddp+ejvaqQ+L6HoslTuA0oyysd+AecLJMuevnDiuA
         M3IOKsAVqnUkotkO9anuWKggD5DCgTKtTTs9a6lUkTDXjA+IPopb9GLn4AUML8FYuF9G
         UmbmOnXyJ3mJdUennwe7TWOx4rgrw58qt420f3YBsub/Lfl1vkSPH0U6wZxNKQjZD4AE
         ngdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pxDYmGnK;
       spf=pass (google.com: domain of 3aw97xgckexaqcifpshuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3aw97XgcKEXAQcifPShUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nex3Gl8g3QO7uIde2uA05ZozO626ebhtc/6e67S5IlY=;
        b=Idnfy9L4mlFEZPHWbBGgG4t5RLOfBHwQYtunyTlVEc/RVorAme3uqfy9MhJomtlyuR
         XUk3cnGgwwwMPVjghJ0v+Sw3CuSdiUKqirMQWGmzrVrY331KgIOdcoAzm/9zLA7Sn4L/
         MhxU90bAgjREBJ32JrA8W080+tBWDUK/htwTVtHFiBO1rbrJrVNnMwj3prHj6JcVVTQ5
         gqn+tUwX0IjhHxyGu+8tNP2nKAc5GFz5dRuve/ML0j27ONpOW/QzkJ1nYumLpjM94r6f
         bXlMuaMe//CkfsdpyObj+1s2PuYsMJmuUYOKgkfGSXuw4aSB2T/PyQNGiO60z72QFzhE
         VVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nex3Gl8g3QO7uIde2uA05ZozO626ebhtc/6e67S5IlY=;
        b=Zz5frzFNSxcJglC8N62KDfWguc9HKl/1doAZvF4FhFYKx4I5n0V+sDdAhnLfloHkP+
         zIuBUTBzGbtb7IT2c5uI5On3nIOLVNb+wTDnVHjhK40/6xxzitY5hqUjKkQlOLiiCB00
         Svn5eFsPZHZ71YCuURscuQwdGMTOQYbuAM05jJcV2R7ywTtsL5JDTAvB9BvpCKtaVPm3
         y6lw5mzEqSLKscPwMoZfJtAZJJn1IldFNZye2LBd/ZcyYpOJOkDmoM/rmfmfaqTrZ8pa
         FZiHk5dyrSoAnurx+LyxCpDCIu0fktt8MULOtbQ436lczv/c+ujjC3Oev+He3M239uW1
         snLw==
X-Gm-Message-State: ANhLgQ0nA3hksLiq3aU2LAk6wsz0kIu8SSxFSemKhyY6ZheDVVXZTPNW
	iv9vJ78BIsY8rM1G2yDL54I=
X-Google-Smtp-Source: ADFU+vvEGTpk3XR4zDy5Yy/+QmkfdO6ikoMmGs6FdWNvJshc0HRzKV7QJXauB5lq8GNVyxUUxVBF5g==
X-Received: by 2002:a5d:55c4:: with SMTP id i4mr2094816wrw.170.1585123180555;
        Wed, 25 Mar 2020 00:59:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:104d:: with SMTP id 13ls700585wmx.1.gmail; Wed, 25
 Mar 2020 00:59:40 -0700 (PDT)
X-Received: by 2002:a1c:b4d4:: with SMTP id d203mr2179721wmf.85.1585123180056;
        Wed, 25 Mar 2020 00:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585123180; cv=none;
        d=google.com; s=arc-20160816;
        b=pBi5WoEf3gxxp7r19dc8NpiVw2vPIqnQmfWQLhgQ0sZ32tPYEz5PkmyOsJIkVo3OR7
         VIi7bqyf2F6waTvrfJ/Ylf27vMeMudJjAJu6IBvzNAHWvBQshVUrjxcj/bWSlYi+EIxb
         BnMzpsBdMcR5AluXEjx0sISSES9ppXnt9ffL3BmAeMK4lhhgnlb+M+JL2HEwYKvxXz4W
         Bhv7595EQsOMyUR+nhYtmIAz/ULnfLAU12dInULO56etbRGCZNj5sLCO1ItovIWk4qCe
         +13e8w2kWgJBK/PypTD3TipbnV+dicY6eENv14b7eCHj8DnI2bgA4N1/vGP8Pn17HrRd
         lxdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=hfFzAgFLiPhJI7PNYPoebZUNl36WTAu03kIuyGPpbI8=;
        b=RMUHE+NzpKnNn6Ne8ljN+xvO6bSj3i04EaBRIq5jA/BMqYs2L0RQNFT7BwP10u1no9
         XQNFa2ljlbMaD2CaHdzOE89GMF0uw3vEyLSRdXD7IVVDb9/MZaehfLr5asghXi+DIjJ+
         Nr5qZzsPkAPE0JVMEe51CFefLsa+ds8BtoLex7e+hvUod4oBdIjsgFtxaTSN2SPtFQoJ
         GWSwl3sS9L+Xr1Af82HiDwe69l3XX2FL/EAlvhH5CTyUU77de5HMrd8Nymiu4g4DCpb7
         ASVcW7Yb6NrVsyZzGoewn/b6OdlCahp7wp+RJaYKurAMFAbfpnN9viWZdcikBvMLByrz
         dlqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pxDYmGnK;
       spf=pass (google.com: domain of 3aw97xgckexaqcifpshuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3aw97XgcKEXAQcifPShUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com. [2a00:1450:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id q197si350475wme.2.2020.03.25.00.59.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:59:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3aw97xgckexaqcifpshuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) client-ip=2a00:1450:4864:20::44a;
Received: by mail-wr1-x44a.google.com with SMTP id o18so753524wrx.9
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 00:59:40 -0700 (PDT)
X-Received: by 2002:adf:cf09:: with SMTP id o9mr1950627wrj.74.1585123179453;
 Wed, 25 Mar 2020 00:59:39 -0700 (PDT)
Date: Wed, 25 Mar 2020 08:59:22 +0100
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
Message-Id: <20200325075924.109330-1-courbet@google.com>
Mime-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH]     x86: Alias memset to __builtin_memset.
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Clement Courbet <courbet@google.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pxDYmGnK;       spf=pass
 (google.com: domain of 3aw97xgckexaqcifpshuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--courbet.bounces.google.com
 designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3aw97XgcKEXAQcifPShUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Clement Courbet <courbet@google.com>
Reply-To: Clement Courbet <courbet@google.com>
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

> Not sure we should modify this for someone's downstream tree to work
> around an issue they introduced.  If you want to file a bug
> internally, I'd be happy to comment on it.

I don't have a strong opinion on that. I don't know the policy of the
linux kernel w.r.t. this. There is an internal bug for this, where
kernel maintainers suggested I upstream this patch.

> Does __builtin_memset detect support for `rep stosb`, then patch the
> kernel to always use it or not?

__builtin_memset just allows the compiler to recognize that this has the
semantics of a memset, exactly like it happens when -freestanding is not
specified.

In terms of what compilers do when expanding the memset, it depends on
the size.
gcc or clang obviously do not generate vector code when -no-sse is
specified, as this would break promises.

clang inlines stores for small sizes and switches to memset as the size
increases: https://godbolt.org/z/_X16xt

gcc inlines stores for tiny sizes, then switches to repstos for larger
sizes: https://godbolt.org/z/m-G233 This behaviour is additionally
configurable through command line flags: https://godbolt.org/z/wsoJpQ

> Did you verify what this change does for other compilers?

Are there other compilers are used to build the kernel on x86 ?

icc does the same as gcc and clang: https://godbolt.org/z/yCju_D

> yet it doesn't use vector operations for the general case

I'm not sure how vector operations relate to freestanding, or this change.

> Adding -ffreestanding to optimize one hot memset in
> one function is using a really big hammer to solve the wrong
> problem.

-ffreestanding was not added to optimize anything. It was already there.
If anything -ffreestanding actually pessimizes a lot of the code
generation, as it prevents the compiler from recognizing the semantics
of common primitives. This is what this change is trying to fix.
Removing -ffreestanding from the options is another (easier?) way to fix
the problem. This change is a stab at accomodating both those who want
freestanding and those who want performance.

The hot memset I mentionned was just the hottest one. But as you can imagine
there are many constant-size memsets spread across many functions, some of
which are also very hot, the others constituting a long tail which is not
negligible.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325075924.109330-1-courbet%40google.com.
