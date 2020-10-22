Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBB7FPY76AKGQEAFOU2EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C2A296501
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 21:05:32 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id b8sf1093986ljk.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 12:05:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603393532; cv=pass;
        d=google.com; s=arc-20160816;
        b=uVeLG5Q7kLSwKzbSQTn9UgoShVXlDi5OyXnBh8FCwhdIMsRuQlM+aNUNUTBT8SE+ei
         /d0jfX9We8hLBKUNDDOg78WAzc0TE0nq8J6SDDkQkWDMhiwHHNruu3+Z+zYNfs10jsNY
         zYlzPT+gK817llhe7H4uLPQPUy5Qi3dSCM+0PVebBr1IjYcx7Y23+wZi9Jn9O8iTjDE6
         CEbay4wbY1TevCNedn7cfoQO/gaBallhTpMJmP3EuvaD8B+A1WjZraQ6uFZQg9UoTaX+
         wBoCZB9v/gjFg8mNUPw4r7MCtUcyKmuAc8KEhKRt4p2ZbHqK+QCNyVwl3KvQjpCAd5aL
         4+7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=k0VKpIKIinnCEZAFY6L2NgNaloAW3MycH77PrTb56SM=;
        b=aJatnKbOJ4HqFVuugQwYhCE7pbKuB4Dz7ZthnfB3Hp+57nRX69EWugYjBACGCaebk9
         FuPPJxZrTywoaqhDH9e5ytugnvYmVeEh74rckn0AuXS+ycpibfOeUqFwhTo3z2ImQKjN
         tudy/9Xh64rPsVpoQE+nQeg4IOmkElbfnlGI1KRmMSgiWsZvaVtuO0vCJm4M26mmP1y/
         zXWYF1R4meQANrpk2p/kgQYH5uxxXEEdiBe23EigFdwctcVX/VZ0mSp8MU4mWt4/ftR4
         Xnz2DuDCdME67JOITuNXbJY4xsc2e7DuUaWP3JP9yBLhbzHf8GoRFKlAzOXF2TM9WaM5
         34Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUGyXHYY;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0VKpIKIinnCEZAFY6L2NgNaloAW3MycH77PrTb56SM=;
        b=ETsacYJYrwN1SDimjZXHtACVpOGFTMW4s6Ovaq8f+HrHrJ12z7N+c1AE0R77OZePXu
         /GpiioTm3/sOO33yiIsy12DXHX0pc/DqdL6d3qt/MD+QGozP5e1zVbeeLhZCLINb6OTK
         lN1EfsG+3B/LClkEgiuFGuPMFo+BQn65Cqah5vTY06f3MlK6nii1XczGCSeITr5sp1HL
         aDoDqd68RbivMcuz7mpJGOsnOdUPV7zOari6s4zr0f7AQh++/kO8uf+fWlJKVsqoKZv2
         8bjwde6UY+aYo7ywXmR+nEpgETHSEuxEqun6iRq1bUUnKsHQl43bEZJpbGyVICPD+mcS
         DTkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0VKpIKIinnCEZAFY6L2NgNaloAW3MycH77PrTb56SM=;
        b=H7T7OypMkBqeD4LlmDUJv8BEnGJZy4i0nGeEYtLjBt4YnPZOqv5jIHoEazHm0dgAGQ
         4LS/0Rm3JOI84FoPz2Tqk7o3g88y3eJUHfUhgWnT3xy8gqhODZqqjXpyVsEgUO76UtvE
         yLjgDg2ce564Gph3CNfyPplNukGv3WR29hQbZg6G8OoKTD2w+5XwcUEGtQUJIzKgHkZ3
         N815VhaosengErkZqnk2lIQ4KDFrJT7B03lCQIRGD4YsiFQ+O6JvFS8hH59TmfFLs4Y5
         SfLdozPGHcEX7J1jR06UdwWUAfhyQ6kDX96S1IhoFr0d8Co5h/eFBJaFreo4J5PMEB7R
         vwzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0VKpIKIinnCEZAFY6L2NgNaloAW3MycH77PrTb56SM=;
        b=dixCcrdTVYp/JIiR1yoC2oUUMOIQw2fPVchr0bjwvi08Ujal/w8f0bvAVbXL42eYcU
         9BQSBxFoa/tyEyWAEb0tGZ+BzJLKwmqLDxz0f5sEPmbgLxPHpfM8F0VaHAIEldpujnYk
         xooWaN/Ckg2d5Pe5s/TdLVilvXB+W4QBgjspLdAQIgoj63sHl6nVRP1VUzGixkdsP6x9
         THTCeKkKguvsyVJA5S8YYA7E0G/raxc/ZG2abX4myA4H7MTBLfVuVTS0QCnZjheEW8j3
         VtHlSpJDxdIpfgTi4LSXPkmbgF62cenQXSAvXuAPZcNopxdB04dpV9tSDUgn5O1th0ci
         nOLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kyvwNx8Whes7WWv5JhY85np7sOuRnGxfcPXF5oQ9CriZzTVpQ
	QZpmGAm1rgBq/934LQYyJ4I=
X-Google-Smtp-Source: ABdhPJzWvWc+sSuNZ98fRpIx2Sa0REMQCtO1BvOyNTShl2qA+slptfv9h/cI+UuW5bK2MyiMfAFIag==
X-Received: by 2002:a2e:b557:: with SMTP id a23mr1663164ljn.5.1603393532347;
        Thu, 22 Oct 2020 12:05:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:84c1:: with SMTP id g184ls1840797lfd.3.gmail; Thu, 22
 Oct 2020 12:05:31 -0700 (PDT)
X-Received: by 2002:a19:c74e:: with SMTP id x75mr1287002lff.532.1603393531324;
        Thu, 22 Oct 2020 12:05:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603393531; cv=none;
        d=google.com; s=arc-20160816;
        b=rTwHkFIRoGuS3raSsKvMv1jpaBpd/p3+NPdeh4foM59nuoZ+UcQSrk8qd58DTVtQJt
         tO9f8YEzskqQ+C6d2ehwlpNAFugP/FC0rWoHuUoymY8kb8GZQ1K9sNJmTX0VVN35PUCf
         k0EZrVYFzGrWvofT6wJ+b4lM4lac+pwOGhH8/tUy1j5BypXh6pEVLljE4IEsFqCHfNxs
         /B2W681uT77iSSM5hXZtlEoo/t4grJM0uG2Wu/oKMtfbwG7uAcIU3ppRKfdtAmyIYmci
         3uHToyogXl68H9NAGQPAvKuHVcHVOQtc238j9bB+eSiuB79a/tPHChhd/SqnfqU1vNvb
         MimA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=RHdOKnSFcmE4zwfEi1VqTCH5ZuvXulyjgMDpnhPLB6Y=;
        b=yiOWEwNpYETkEeQw873ItX7PwnFc8k9Qzoqpn2eEvzmGMgKPBXszhyQsL+z5VlGRMq
         KSKxJVisNag+x9PjPVazfRu3MqV86s69xxcNynfiJIzCDKSZCnJXyzLxUVHGgAQHVAAk
         nB9d9wIkaRseFxUqbjETjuH9IsaYEChi7bl4a0+gOKosZyRLRstXYTSTkYxABpgIXJ2e
         5QvAvqn7PnFJDMuC7NG91QBTbun2XiX3vznsMJ0B0UW7kf5ss4WsEWLwOxYsriHuJyAj
         Of1d/L459/iEHctYJ5BY0c2o2AC5emHm5Necoc/OoHIaYMB7rCnGNnp/HsD+5ZnNFO5D
         TMJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUGyXHYY;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id l28si90537lfp.11.2020.10.22.12.05.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 12:05:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id h6so3599803lfj.3
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 12:05:31 -0700 (PDT)
X-Received: by 2002:a19:ccc2:: with SMTP id c185mr1448443lfg.322.1603393531147;
        Thu, 22 Oct 2020 12:05:31 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-186.dynamic.spd-mgts.ru. [109.252.193.186])
        by smtp.googlemail.com with ESMTPSA id 18sm425054ljq.0.2020.10.22.12.05.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 12:05:30 -0700 (PDT)
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
 <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk>
 <53e78602-6370-aeb1-398b-5c065dd562f8@gmail.com>
 <20201022173843.GR1551@shell.armlinux.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <39e453c8-fc4c-6c78-3f07-8f74690b1ef0@gmail.com>
Date: Thu, 22 Oct 2020 22:05:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201022173843.GR1551@shell.armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hUGyXHYY;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

22.10.2020 20:38, Russell King - ARM Linux admin =D0=BF=D0=B8=D1=88=D0=B5=
=D1=82:
...
>> But the two line change isn't portable to stable kernels as-is, isn't it=
?
>=20
> Why not?
>=20

I assume we will need to define a new section, no?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/39e453c8-fc4c-6c78-3f07-8f74690b1ef0%40gmail.com.
