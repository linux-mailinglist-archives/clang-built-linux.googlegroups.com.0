Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBBEKXPYQKGQETB24Q4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F8914A2A6
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 12:09:56 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id w11sf1090893ljj.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 03:09:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580123396; cv=pass;
        d=google.com; s=arc-20160816;
        b=P9l7MUmn1isydANB6Dqlhi0gPGO5R0KT/fqqxCXhkoqDd9the+9G8d/7ObT995mrM/
         QUGpk60pecyH5XaN0UYRXBAy4+wIQgn8Pj4BpiCPpAesKQBycGolDLoXD/ZCnob7LdjV
         L98N/sjrEDvJ/6Etzw1nCyKP8LGyirgqww7gL5mdPdaXJoJbsKS0r/Dfx+hrASNpd+4z
         /g5JRvF98RRdUgr6SQqBqWj+7oH5mG4S1EJzK7xTZsSkjaapdRtKFhjEl9TfAngXW1KQ
         KKjZ32km//oi9cMHUWQ456eCvVLzNaittx30vnYqAG+HCWyqv1iIGBF/oZbUkbv9gtB6
         130w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=icABHPLXzd9fobxiLTbk9RE2DrPTC8Slho4m8RL+tck=;
        b=IMz1d+N/K/JZHFyKoI9GCBseFIOveE1UA+8h8xi/RS+GL3j30cLcoFSVrhp01FrW0Z
         2Zf+xQ2N+sYWA/pZ13WGmtFf5ooqQxAgctWaf4Rmqb3AQ8DlPADCTgObvURWOd1uFYi7
         Q7ol3GjugyQLK7+RBRDRga7PMmhIefMWFZY5OJ0Wu95bl1noSLLHxJe6VBBh+Jz/fZzR
         /RnLKIeWI6fmSo9hvKr52/XbCFQHoFGgBn0l0rlSXV+wDUr1T2xlrCvlV8FWeRM/7hmE
         P9hk54+GbRJJ344UrVloiK6Dy0Li65oPYZ8nZShBkz7wXrat51BksgtzsBnf+UUfHo1K
         4+tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=icABHPLXzd9fobxiLTbk9RE2DrPTC8Slho4m8RL+tck=;
        b=Typf0FjTl2jRdWzncnLCzSr8cABasnD2etEEuB7T89sSwFBf2m/5IXzVSSaHPC5VQT
         It6SK/EPOhqdgGeEnVWPLZQMp6e0/GK6HiXu+4+pllk+I2FvFIRbHJ9SI2pBK2kzW1Y9
         NHgmVjWfd7qclyksoZG6i2CbvmxlkMaavJBNFlLN0h+tnSTX7XQy8ZjhMopWJMZIVup7
         XnGeY2PDUKjLHfZpWRt8ymj5he1ni9lZ7hDXPD3aFwUUawmEQ8HRPyImHoRhweSjK1e0
         yflE98mfdKAOCuWB+Qs9JTmiaxnpSfXUeem0zlVbohCh5sb9W3fOPtkAdiVAc6JOCBPf
         QWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=icABHPLXzd9fobxiLTbk9RE2DrPTC8Slho4m8RL+tck=;
        b=clZ42g1lWy5AiyFxq9iBMcE7/jcWGz/EfJb7rXJT6fGktypME/BGChcnUS6hjBvfUG
         oB1iL2nCSfxb5Uw6KI5lMUOyCFySUMS6Mujz5sSsSp1j7zuK3ufbqSEkhtlTGOWp1C5q
         ucBP9qpLguE+fjwPlAQGbTmp0GG4G7/hpeR8K9ITiNBFOFhCyL5Ax2PdSgLMmCYuYNwm
         FMk63jdITXrvHHI7870vPUljSL/npSONe+3xNO5LOm109Q170d+yLCWLampgp8gL4oNO
         8dIuFpkmX38hfuVmX/AoicdXZ6VmGE0k0MdxlNK3hTSWT0fGgCyV8xJ4UOBmkKGYYpiE
         twXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkydi/OLaJbO1+SEKO52hrH6TVAUwLzKzy57NlTgF0buKMQA2A
	xse3j18qk027BLHQCu9Z5NM=
X-Google-Smtp-Source: APXvYqzNhaRaKuX0kEDw0YCyk7bD7VRIp1Bc7bn8FT68+r8XFOwAUvqVZf/kG/xsVygYA6HfbiS/4w==
X-Received: by 2002:ac2:44a3:: with SMTP id c3mr7889385lfm.1.1580123396079;
        Mon, 27 Jan 2020 03:09:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:532f:: with SMTP id f15ls919663lfh.9.gmail; Mon, 27 Jan
 2020 03:09:55 -0800 (PST)
X-Received: by 2002:ac2:5f59:: with SMTP id 25mr7786718lfz.195.1580123395519;
        Mon, 27 Jan 2020 03:09:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580123395; cv=none;
        d=google.com; s=arc-20160816;
        b=NLuZyqDj6vJ0BSp8zLWxXQNCr+ppAi/TOMO2ra2Gga6Iug2N4nscaqCoFnRHLHmx0p
         X4cn85RuevfARg8wE1wrydJmnjPpaSoqPcnX+KEPw+ggZi2vIbK7ooptClDklPBDvCXP
         HpnQT7A7eZRjQN5jFQ4sUfpGnXkFoEVQzhS3qUSgf5YFy53lheRRomZ+IT1id63aBvvS
         7FurFf8yARAMeLMrNFKKoMR422FjD4cjgIDUbtdCDSL808eVtuZjjBNcIGaWBAfNtroi
         qn3PkS1+wCznvDP7hZet9SpUP6JKs9nbiIR1OGuefabTUcuqArju8BjsVbV/w2KWmIpl
         n8Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ct9EXffNhYV79DpOZoHIW3hhaZNQ6+18s75dI4RnA0Q=;
        b=fiF54SAUmTp+gmGS9HCFRTAlZFmLEcBFHBYfPZom7reAV4n6Phxy0sys02NLfxqc9a
         gUWM+k7AEwYjDianJSOJvpXJlHEbCAtTpVMjxmujaDoWERoYrg/0xZlZ0k9KB+ozwTW5
         1eiC9DQ63Kj8io/VKwSfoBwNcejYx/HZGFTlEj+fIbIMfuI8XaM9TGMBAAfEiNyCfief
         W7sm346lrSarhO76I51c0NOjkObtRywypI+11iwLDeR8tp+m6trJqyiPJWGtNEfmbB2z
         evK1oTeQTXa0mN9BnYCxoXFuLrzytsFLokKALQE0xNm5tG95UEeYTwLF0rxePaMkDbEZ
         nwEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id j30si679277lfp.5.2020.01.27.03.09.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 27 Jan 2020 03:09:55 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1iw2H7-0000Fy-9E; Mon, 27 Jan 2020 12:09:49 +0100
Received: from [2001:1620:665:0:5795:5b0a:e5d5:5944] (helo=linux-3.fritz.box)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1iw2H6-00054j-PT; Mon, 27 Jan 2020 12:09:48 +0100
Subject: Re: [PATCH] selftests/bpf: Elide a check for LLVM versions that can't
 compile it
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-kselftest@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org
Cc: shuah@kernel.org, ast@kernel.org, kafai@fb.com, songliubraving@fb.com,
 yhs@fb.com, andriin@fb.com, john.fastabend@gmail.com,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 kernel-team@android.com, Jesper Dangaard Brouer <brouer@redhat.com>
References: <20200124180839.185837-1-palmerdabbelt@google.com>
 <87ftg4fvmo.fsf@toke.dk>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <dcbed741-a16f-0057-6589-e2d2e41e9bfc@iogearbox.net>
Date: Mon, 27 Jan 2020 12:09:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <87ftg4fvmo.fsf@toke.dk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25707/Sun Jan 26 12:40:28 2020)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 1/24/20 9:27 PM, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> Palmer Dabbelt <palmerdabbelt@google.com> writes:
>=20
>> The current stable LLVM BPF backend fails to compile the BPF selftests
>> due to a compiler bug.  The bug has been fixed in trunk, but that fix
>> hasn't landed in the binary packages I'm using yet (Fedora arm64).
>> Without this workaround the tests don't compile for me.
>>
>> This patch triggers a preprocessor warning on LLVM versions that
>> definitely have the bug.  The test may be conservative (ie, I'm not sure
>> if 9.1 will have the fix), but it should at least make the current set
>> of stable releases work together.
>>
>> See https://reviews.llvm.org/D69438 for more information on the fix.  I
>> obtained the workaround from
>> https://lore.kernel.org/linux-kselftest/aed8eda7-df20-069b-ea14-f0662898=
4566@gmail.com/T/
>>
>> Fixes: 20a9ad2e7136 ("selftests/bpf: add CO-RE relocs array tests")
>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>=20
> Having to depend on the latest trunk llvm to compile the selftests is
> definitely unfortunate. I believe there are some tests that won't work
> at all without trunk llvm (the fentry/fexit stuff comes to mind;
> although I'm not sure if they'll fail to compile, just fail to run?).
> Could we extend this type of checking to any such case?

Yeah, Palmer, are you saying that with this fix you're able to run through
all of the BPF test suite on bpf-next with clang/llvm 9.0?

So far policy has been that tests run always on latest trunk to also cover
llvm changes in BPF backend to make sure there are no regressions there. OT=
:
perhaps we should have a 'make deps' target in BPF selftests to make it eas=
ier
for developers to spin up a latest test env to run selftests in.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/dcbed741-a16f-0057-6589-e2d2e41e9bfc%40iogearbox.net.
