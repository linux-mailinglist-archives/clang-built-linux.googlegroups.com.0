Return-Path: <clang-built-linux+bncBDD5ZFHSSQARBCW6XX3QKGQE3KFEXTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C364202B08
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 16:30:35 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id t184sf5162045lff.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 07:30:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592749834; cv=pass;
        d=google.com; s=arc-20160816;
        b=x/LoMog/SxPRoB+wuruPYzQorIabG6HTozhrYO23W9GK6gs5HTVFgSLTbaBX4nd5sB
         JE6/I0VFWqFsq3Zci6XEZyHfw5ssGHNLQpw/sny4yUxVyd1rOSOAVRYLgmd3/KmfuNmF
         aDPlEHHIY76uMLmbNReoMnWdk2+uV4y5k9/R6PN28COASv1Gsy1PKj0lPnSkdu33r9yO
         j1dKIzpXhdHvGlxuc3ABNpXyrngjl3PcFwBnHST1am3VIxt7b9DiRt8DIJTb3uWNtC/6
         muTxSz40tYCsTfVJj1mVScUhq50Cl1XCOB3ajcTpcp8K6UJi4dYuFeqsLSt6bP5N3ABm
         mjtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=nPvUTj5iKhVBcww+GGIFrEAZ5g+cLwy/4vWNCFWIe0w=;
        b=Xg6b5kI8vnook6UHORSYG6+5tH+EtJZzTEvRX3pt61E0hqoMFxVg/vd0zBcxaZ5F0Z
         nQjY98urG7q8vHItsFJAvhjeOtiqqUim4t1T2Q2yQ83hiFUN7imnFiRR0lySP8BvzDTv
         iX1gGWRV+Fqn78HmWCN++XtzlvWQswrtL65/AW7964r4/MngV7Q0WDqa1IlxL3lFoHCj
         pjKnmojeXIKxuurX5wSrQ6/DOKLMfuzzaRfV6WyPDDudZBnXDI2C/+T5qXdsbBLUgrEY
         /8NaA8AE8KbF5SgZuyY5m5ZvvlPH7/kZDXSyAGxvyzCYGT/gE7JmKZ668ghWdzyxXVdP
         NW7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nPvUTj5iKhVBcww+GGIFrEAZ5g+cLwy/4vWNCFWIe0w=;
        b=EaVtu1tLSJJz+8jt9IZgRRqhdFd6JyAmBwJ+/miesnGitoXVb5dNmiWeVCOFapYOQs
         IwJ8h3aj/wDhKD3KpQVzvlausTh5/DTu8El7mlbslWV8fyapiOIiSEWRupE0HD4liUOK
         MrMQqDwYuqA0/fx99CkCX1oMMC0NRqKocL1kAh+OBRa2Xh3JXmYxQ+ixbbSphrfM1goC
         dtmSw6LltrbdNMLhwQkYwUZj2cnqkt0Jw0XF/EXzOnFJVou/BqyIfBXNkTm87hBO+QCy
         R6GHr+rkEDbk+MTx8crKWhsMN3xiQCEFRA8kZ6SvEY++yGIUZeNHz9+WRBiwRtp5zaqj
         5a2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nPvUTj5iKhVBcww+GGIFrEAZ5g+cLwy/4vWNCFWIe0w=;
        b=QLr3EiBPF4p4P0JdbErHam5cXopusEIsKDIpeka6ten9YeC50VkRyyzlY83zaaSKe0
         BWJgrkJATWB4zghs0jvQCJ+qoI5rIhau+xH1HZwS5EIPpvtecnhyXzJE9F7fMWZ90mfV
         810R3Vl9TbgHfP4XACxki9rdatBdYCJK1cn7XfyMh/0FXp7PTKFfo0hJwy1v/ClQZZ9A
         0oIWEVG8IOSgQNfWWBVFFf4SwT27e8KvQ6f3DBj38ElLev4lohkhlhAH/4lBCN2kilNI
         mhGrR10nCf0RQ9rZs2AL95cEZnRstpW+ImL24yXiMij3kUPDuqB4lsVuchtUYD0Txs4g
         f1jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53199abfMfF7UdvumMOPasJIV3wKEX8DIm/dtyW2XJ1QrcBy8s2K
	0fWHvxY+Ddc+bq0VThnSJV0=
X-Google-Smtp-Source: ABdhPJzK3fB9fpfSzmnEtOopz1jDPbEXnP9x0wVNbZ9PsIjOwwQvGM1nEFTC2KT/4W1ItRcymNwBdg==
X-Received: by 2002:a2e:2a84:: with SMTP id q126mr6603594ljq.42.1592749834677;
        Sun, 21 Jun 2020 07:30:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c188:: with SMTP id r130ls1382349lff.2.gmail; Sun, 21
 Jun 2020 07:30:34 -0700 (PDT)
X-Received: by 2002:a19:ca48:: with SMTP id h8mr7298202lfj.161.1592749834124;
        Sun, 21 Jun 2020 07:30:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592749834; cv=none;
        d=google.com; s=arc-20160816;
        b=gzwthWcu9rxuh3r9vZV38rWi8DkFt/gc+MQe1qMyBqF20zTLj+Oa8L1srqC3daixov
         3Tmzuef/z9O5sQuNwwWkaHXo6Mo4Q2Xm1n57sQLn0uA3h0YI46QcflxPhEDiI3ybVtq4
         JFHAORgaOt1LG1N1GaF7cV6wM43T9IW553+0Xbkx5oDssxMFE05mS0GFPj/MRE3AY4o9
         qi3VT0g8KKDUq7CbCBq49EkwtFO07ZTzH1SBQjWvRX6SdePvNd1Z80s3z/phl15tIZQU
         o553nIDeAPOyNqNfQsG70JL/mNKiHSxM4+rpAXOoU5o+iiorO3pKoSAGjEfq9bGPxS6B
         OnzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=UeQ/EdwavcEvZ/UpkxiQwCgcSccyVxz5LQJE5dQ30uM=;
        b=P27ghLLrslHyIaSPQ/QAtdcyhI+tY+7e9iLUKoWQGipHXNytMRGVLiQgxKELR1+Ml6
         HHInhYELn+75MCiK8PliVyoyAJjj93zaIakYERFDvpgiL8BnwjaPY9VnR5v/LbMRz/72
         xRGsnGZQxNUt76tkw6kV/4twvwdvJoIEVCBxxRVzJ2rPuQ0SJJmp72r0ARRHlEg63Jmq
         zPrqFJM5M7XQbbsEBLT5DfVmWKkL8hns8hQrrzqkvG0CAS6PijouUCHb+8tdqh21EPLc
         o9O8Npy9r08xWWJkhJfRl4eouTSJ0Rx8iZdS3l4FhNF2npGVsVwbJBXuGt3m5IDdYIeZ
         XSQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by gmr-mx.google.com with ESMTPS id b13si60770lfc.1.2020.06.21.07.30.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2020 07:30:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id D77B2467E1;
	Sun, 21 Jun 2020 14:30:27 +0000 (UTC)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/process
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
 Tony Fischetti <tony.fischetti@gmail.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>,
 Will Deacon <will@kernel.org>, "Chang S. Bae" <chang.seok.bae@intel.com>,
 Joe Perches <joe@perches.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Kees Cook <keescook@chromium.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Jacob Huisman <jacobhuisman@kernelthusiast.com>,
 Federico Vaga <federico.vaga@vaga.pv.it>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
 <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
Date: Sun, 21 Jun 2020 16:30:25 +0200
MIME-Version: 1.0
In-Reply-To: <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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



Am 21.06.20 um 15:46 schrieb Miguel Ojeda:
> Hi Alexander,
>=20
> On Sun, Jun 21, 2020 at 3:37 PM Alexander A. Klimov
> <grandmaster@al2klimov.de> wrote:
>>
>> Rationale:
>> Reduces attack surface on kernel devs opening the links for MITM
>> as HTTPS traffic is much harder to manipulate.
>>
>> Deterministic algorithm:
>> For each file:
>>    If not .svg:
>>      For each line:
>>        If doesn't contain `\bxmlns\b`:
>>          For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>>            If both the HTTP and HTTPS versions
>>            return 200 OK and serve the same content:
>>              Replace HTTP with HTTPS.
>>
>> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
>> ---
>=20
> Looks fine, although it would be nice to have a link to the discussion
Which discussion? 93431e0607e5 ? IMAO the patches don't depend on each=20
other.

> (using a `Link: ` line to `lore.kernel.org`). Also having the script
> in the kernel would be nice for future re-runs (e.g. you could add it
> as a first patch in the series).
IMAO:

* The script should not be neccessary once all of my changes[1] arrive=20
in torvalds/master. Instead reviewers should say like C'mon dude, what's=20
this new plain-HTTP link doing in your patch? We have 2020! Look at e.g.=20
93431e0607e5 .

* The program language agnostic algo description of mine should be=20
enough. If it's not enough, I shall improve the description.

* Today I've added "If not .svg:". Imagine Torvalds merges the script,=20
closes the merge window *and then* someone runs it on a random subsystem=20
and discovers a missing condition. Do they have to patch the script,=20
wait for the patch to arrive in torvalds/master *and then* patch the=20
(other) subsystem, so they can refer to the now patched script? W/o a=20
such central "rule on how to HTTPSify links" they'd just describe=20
*their* algo. Or (even better) there wouldn't be much more insecure=20
links, so the algo could be omitted.

After all please show me one of the big bosses (Torvalds, K-H, ...)=20
who'd tolerate to have a...

* written w/o focus on maintainability
* not documented at all
* *Golang* file

... in the kernel tree.

If I correctly understand, you kernel devs write code so that if even=20
the maintainer leaves the project, another one could just take over.

How many kernel devs would read and understand (all of them I guess)=20
*and maintain that Go script* of mine?


[1]
=E2=9E=9C  linux git:(master) git stash show --shortstat
  1857 files changed, 2664 insertions(+), 2664 deletions(-)
=E2=9E=9C  linux git:(master)

>=20
> Other than that:
>=20
> Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
>=20
> Cheers,
> Miguel
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b7ba0047-8993-d3bf-327c-1fb70bc0282c%40al2klimov.de.
