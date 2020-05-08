Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLM7272QKGQEK5YODQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0640A1CB9CF
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 23:31:26 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id b23sf1276970ejv.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 14:31:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588973485; cv=pass;
        d=google.com; s=arc-20160816;
        b=vwt0CkMjXi3/F4bngfQFf5t1UAAie2sSKopuhGji0+bRY4T8Koe7Y9L4fOYzPkXS0U
         sV+GOWRbSmmpb9Xgs2XivhnJ3IPgabsXkLEorRtS2xgk2QG3auysPQO5oEqPumpdk1vo
         +5eiXqPgL0wc/BCkCVwWS59s+1fSk/1/Ce5Rz/PS0XADnA4F9IvNsGP5R2tMUOxJojSh
         PggSzApgZSN3b6iPbqjO+UkwAlRHeYuk1YqdqHYnX6o1lWzyy5qOarS78Fh4yCbiyruf
         kPYe87mpmT2sVbAcPO2GeTQnqz+4bFS4PhNAZ75QiYfw+sRhQrslVviFlXxDyhWCx1Z1
         5HJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=X58QsuDhHouLwtk/ZjX2yG9mBDc4kzNg8YxHx76QDpo=;
        b=lyY1IkoQ54aXWW23eEUVwQqH/ukYteCPULbfF7Pli5zJqz1Om2hltWRFm6jukcWDs+
         LJMdRW17EVMbcEL8QaMcBVcHmItQVlzoeY/YVUfRuyETZx6Xle9C0s0zShzeAQZslum4
         BYjbY2i6R6xh56vZ7HBY/MRhWZUtKI1vX0cSEViXkl5nTKIxnyACtGhRCVxTa4llHkkS
         Fmrs9iwKhVlvdjXfyRHGSRrWk2duzXq7ZH72fRh2ZwjQZe/HZMIHQDLaTgpJz3+dYH4y
         7/onxZBwdI+vFmdlBlLlS2iNc9Bub+/NJUQL8hyntt8cJeVNnMDr6leIYagjp8Xu9Mrp
         v14w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X58QsuDhHouLwtk/ZjX2yG9mBDc4kzNg8YxHx76QDpo=;
        b=sHSvuJ+6SZHEV0QD5RwbOHk9k7+kLXZ852+jEkn+HU2sWOb3yLydJCssqXEFsRhJqt
         InOYetfaencew6Iu6zoP9vEJ7HZ4XuADsnVRIA4bNSAhVwruqWCQ1q7G4vKxMHmGleMp
         dFnWD3JMicfE9kK8N4F0UidzL1z3NV3APnjDVa/J456W/6jDtepTz5K+nxRGjBE0Hf5I
         qa/UtkaglzpNekEs3Qz6KQFu3CD1x7gBfe/wxx5ZbFtQjcjpe8a757xglEPAfr0u5WNA
         4fFrCW+n5PA4uQXev31+ytW+tsXPNudRF9igI19imUBDGigznj3H+kH1+7OKPXY/DWMY
         VQUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X58QsuDhHouLwtk/ZjX2yG9mBDc4kzNg8YxHx76QDpo=;
        b=lzK2TmWFv/RT7VbI/wD8kd6KMhAFPRYrFIJ0OZtBiBePDBrTQivFx0x8AkI1uR5mAk
         E5/b8JXCsjvmBYxkExragemG0f1ZGVMhWDKcrIHIWWczeZbFcTEvKSue4N0DP6F2dHl2
         5WjLNrFRM51BeemKUBWCHUL1jNWkFVh0moi2nP0zXiju6vNPkIaHNOIhkkSeNCo+ij2E
         0AKAHZHbCCR2ut3aOGcHuCKd/O2emV//NVX9bZ3WOq5xGhQauz9Ahq0/NrnhsOMsoiNt
         Ts9zHWoi1DIIsaVzRG6W6v6fBQeSG73TvOlx5LVCxxytXfWB0bcSNEkpU/qDubCLr1jp
         1itw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubiL+TJzZNXrl69qYZhMK2FamDakQ8AfQp53En0xdUkB/bXAA35
	/LyD9znA3XgBjgdrQgbOB4A=
X-Google-Smtp-Source: APiQypKLkP1zGAV4I2iJo4vFKqMgmxe3cB7Fd5wK0xL+OANpQ7X+K5CETBD49dYNcygjlREZXDiZvQ==
X-Received: by 2002:a05:6402:686:: with SMTP id f6mr4143403edy.136.1588973485754;
        Fri, 08 May 2020 14:31:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:14d3:: with SMTP id f19ls1261797edx.5.gmail; Fri,
 08 May 2020 14:31:25 -0700 (PDT)
X-Received: by 2002:a05:6402:b4c:: with SMTP id bx12mr4153156edb.247.1588973485187;
        Fri, 08 May 2020 14:31:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588973485; cv=none;
        d=google.com; s=arc-20160816;
        b=jjIRgxktXI1zeOlPEgTKBlzf7/DR2rt/ukS3GKjaFF8SBJh20B0hntY/3M/OfdyAq+
         wGmVXklwevs+Y9GFgA2s+swM1SwFAO9w2njdsdE6BSkm3OJwI9CIraetZYQjTrLR+ql7
         rheriRCgEZ0A3Ux441ZuiXmkNfmwFT4vEu960bvwNMIIXoeRA1nHhOz+KWesDQpQMTv2
         YiKJRC5nR/6/0DeM/XFVC8Pd0bjJI3WMJ8Hj/EFyXCqwZrvkt+Ag30mSkELTB2gYrIo9
         sXx5hh4Bv0pBVCFcbyQnE7SEdywLY2p8PfPi7D9zxn7nZQAXw0BB/JpWo8nFrOr7InMR
         +7Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=JonlQu2toSoN4FYYAxtz80CMe02KlGktIGTNy+0pUJc=;
        b=EecOTxRVcXp9iNRayg9iV5mXnfJwFvzb97Qc2TEdXrE/iqDmIzLPt7vAdckw5fO5Jc
         bEzxuTgnAbagvEDwX9IxXhNzxHHShkCcFuawLNLkO5dvV0TMABRJBLspdiDZWlx5ll62
         48Mno7t9XCZn525iv4HCw6royp3OxnIcvEQ99ASRgkTFOUn9V6u44JTTo/TBxY74s8b+
         cqDr7rHu+rBo1J9c5KXyKHsps6VP39AuU2ikfDxuEu752LhLs0RSzYttbD8wiLlpZGDa
         hgQX5B4dBYGP2+CmFp8EOd1XJ/MsZUUgpso7Kfl0yh4+riB54mEPS9LoL3WGKyyPOVJf
         VPwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id o23si226699edz.4.2020.05.08.14.31.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 May 2020 14:31:25 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from mail-lj1-f180.google.com ([209.85.208.180]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N0G5n-1jA9KV2pjr-00xIaM for <clang-built-linux@googlegroups.com>; Fri, 08
 May 2020 23:31:24 +0200
Received: by mail-lj1-f180.google.com with SMTP id u6so3192634ljl.6
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 14:31:24 -0700 (PDT)
X-Received: by 2002:a2e:8999:: with SMTP id c25mr3009771lji.73.1588973484186;
 Fri, 08 May 2020 14:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200505135402.29356-1-arnd@arndb.de> <20200506051200.GA831492@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200506051200.GA831492@ubuntu-s3-xlarge-x86>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 8 May 2020 23:31:07 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2LAgEG7epWFtUZrcgk9OwpVJd+ji9Ru_rq4L-Qk_dYbg@mail.gmail.com>
Message-ID: <CAK8P3a2LAgEG7epWFtUZrcgk9OwpVJd+ji9Ru_rq4L-Qk_dYbg@mail.gmail.com>
Subject: Re: [PATCH] crypto: blake2b - Fix clang optimization for ARMv7-M
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	David Sterba <dsterba@suse.com>, =?UTF-8?Q?Horia_Geant=C4=83?= <horia.geanta@nxp.com>, 
	Eric Biggers <ebiggers@google.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:71ziO6QOgXdVzwplkgXjjGGdrEHDx7cyqN6gVIgzAcKGZ4ZzdGr
 7kgJR8iAaqJRSZ/kkb9tCb7Lk3YMoJjVBn5kS2BQWgNSjW3Z0T0ShJyip263RM/XOEv1Yhh
 wvgIyJvLE8nPhYUEb00goB+Haji2hRnfPVr/i4PXXvHY9wHSfogzAz0dZiEBk/ZNlGNDOD2
 naeHPtUqIRPlAeFESWBwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:q3mJYcGJFhg=:QCdRGZVKskT/CN0EA333E9
 qD0OBTvj/5Koj9kYtws7bmq4fa1HMwHmQn7gsgKkxPhiKGNHI5D0GOV07qm0KXStOWZUlWnAg
 s0RUYg/EIBLGLAz7qZDAXmbBlf3HO052XBGsFVSL5JliOAAzhMhn+ZCVyDAyyZrYi/OX9QmIT
 ELwXpHyVI6wSXY5r/QwJ1RS8uZ97Ru1IAt8zdApa6HwGjzfkiqB8rfNcq/nJkK9wSrWM/SSY8
 /R8cCcwkX6MGXS5wQfTxu5eEqJ/GBZqIvtNPomxjBeZTDrODpPJb6YWpVVS7AbEDQ7ldq1Nc4
 xVvNkfhslbGGUF6TD7XFCRDzforDGOED81qBCpOLg2QUyKiZWzwqSFsSO2EW8IRhz2rZt5/Po
 FS62tLBTVVbpWw+XRgSQAwIhZ6LKildLFGOYKv8cWGrMvuz7YoHxZQoDHEoXPCV4eHJM045Ow
 lAyRUtYcrrz/p0gYi1mPxBZu1wHgpB6i4hpYr1mtmmr/7a3VviOaX2jKtLhrEUT5cBC9NcCS4
 Fv5ODI2khOLQeoPLw92t2vCzOJCbZ9OAlU72E0UqU9m1+4gi+yF9fqLvUEI/e91uCSOP9d7gO
 s/4zqZbZ2yR5x4V9ll8CDN5O4LgCiUs8K1Lm39VoD9QSBKkETTSGw7URtQkfy+u+bkqq+8No2
 FdZxRQUuAUZ2eYKj132jZuAsK9dkB1mze92CAQAgNl8SkuXEJIjTy24FN7aaN11M3sjvt1NCw
 dWr7D1kNBpYfBqSiyI6yyD+k+jePb+gFGEsdTIFLnsx0GYi31H7jknJc807gwOSH5uQi9MZCf
 Bp8h5uMZyIieG6yhCkc0IjLYhPMSY170GfKm8AhcP7cbVFhbjw=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, May 6, 2020 at 7:12 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> > -
> > +#ifdef CONFIG_CC_IS_CLANG
>
> Given your comment in the bug:
>
> "The code is written to assume no loops are unrolled"
>
> Does it make sense to make this unconditional and take compiler
> heuristics out of it?
>
> > +#pragma nounroll /* https://bugs.llvm.org/show_bug.cgi?id=45803 */
> > +#endif
> >       for (i = 0; i < 8; ++i)
> >               S->h[i] = S->h[i] ^ v[i] ^ v[i + 8];

No, that would not work, as gcc does not support this pragma.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2LAgEG7epWFtUZrcgk9OwpVJd%2Bji9Ru_rq4L-Qk_dYbg%40mail.gmail.com.
