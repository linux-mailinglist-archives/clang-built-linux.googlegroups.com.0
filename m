Return-Path: <clang-built-linux+bncBDE5JTGNZULRBDU34DXAKGQEBIMANIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AC01075D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 17:32:15 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id i13sf4004998otc.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 08:32:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574440334; cv=pass;
        d=google.com; s=arc-20160816;
        b=tjw5Dfw37JAAZ9hOWNyY4EtXBFfzC+O7vZnHLSqSGnTXnbCUr+LV1uV1mME6yf4ijx
         dz0lpx6yw8HzDJO403DwItYNvojAXv6N+cye0utZg1Seqztwu8PR7QTg+Y/S+CkwRchH
         PgryqGg26Cttif7AyMo3kmN6sZsfx9D1ozrTcTk3xnxdErZad8rRGFW0N/qHk6AzIbTd
         07fpmK5yuJDF9WaO5klkHM3wolTJEhJKVlpse4Tgx9JzUA/bE7JpkVVmK8nFpOX0SwfK
         DSjjCMxp/4GhiPcf/+rL9dYCvMEd8yBopc8hbijID1KDtJYI3hC5NpCtPQBghBQOZPks
         rZXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=G4yujM7NJAF2BmrZExgXG+AvD+biVD8+m0M5rfGB5aA=;
        b=yLNqxK8404HCSpHFKpvNpBR7ikOYlQqcT6rN0XDWCC5Jn/6Awm33nlcaqct9JNLVeC
         EJu8pvnDjQN0xaqKmwTxfttkFNKWoFNj2LC1eGb6ALLgSAMflVMt54dIO/oMf9TO/iAM
         mz4JzfEpDVbfdjyoulHet11ltcJhNuLwahpOdP8q0jGG/ng/pUtCVgGnWXcVi3bz9HP/
         Ymk38VQ5FPhxY0xsAKHOEKMX86rUsGTxznFfZ10renLBBmvyOZcGzrhLR2Rb6td+bbkh
         LXa9JVyjkNN7dL5g4f4kMra2vF/4PRwjd0qTzeX9KFvrt4YBePID3ZfjJJBC4ZNZiyiY
         bPDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=0OgC9EH1;
       spf=neutral (google.com: 2607:f8b0:4864:20::1041 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G4yujM7NJAF2BmrZExgXG+AvD+biVD8+m0M5rfGB5aA=;
        b=DEysSlsS/BXBLrOGVrjiKTSHRqistUmf2+rVointHLVKbComadRRTTGB4hZ8HP3xSa
         rWojjXgojySTEqZrPlKkUU/Fj94ZFWWRUm1CI6sxWFwxDiz6a+0VJHoCotn+b0TDc51O
         vCPqc79M1DZroF+fF+mEZrVTmfQ1wpRflIe1zHbO3bZRervWxcvMOQRYPS6FjVyXgkiA
         RaCZR/+PIyIIo9GKtcEdLLxJ45LhBm/VgOH7gC9hBLgpZVh3OFnjnB5Kga/fwmPfS0WA
         3Icp+AlInLMsUwxiB5JPiWPF1I1tO9O4BWDSGEiW1/IWmtAHi8eaJhpI5w5PLEeUeID/
         Smxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G4yujM7NJAF2BmrZExgXG+AvD+biVD8+m0M5rfGB5aA=;
        b=UUSLRnRQyX5q9ovekz2KMwcCNixEDCT3le49bBnIgnEwhZWjsfaLL2LbBns95ECF8j
         bCgXxvPmc+s4fH5wb6UVliR3ks4dZQsSoVWBT8YMQcQBstYBTNiNG88tbZ3/mEstyeer
         k2Bsyh0rTZBVFa/VTx2TqF/+ZqNAa/1rp6MWkjnNj2M54efJOZXKZTzLe1HxqSiAoT/M
         D1AIKjwpAFWODKTZqOYNSwTUtHl8RXzTIYNXZithdob5CFv4I7jSaO7xe1LMsLXA5DRm
         mCrzgV6aKpok8EHJe7dn07ZMtHRddz0FCMMOGFuHQLXrl6QHwNid/+1tBWkImAUXAB7r
         kVUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWDKs9cAXfJC8qDQtdVEg4sgd0MPcoT6X2LWP8fEO6Eerh8VGv4
	hlRHt+3KnPNfVnDw+s5iQ7M=
X-Google-Smtp-Source: APXvYqzSHfLyKhWG8ZQvpFh22NESBoGFP3NCDWrjRKmnMW5iR7HTzgI06BTqDGel2b5l+LEhA9dt5Q==
X-Received: by 2002:a9d:365:: with SMTP id 92mr12324661otv.9.1574440334449;
        Fri, 22 Nov 2019 08:32:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d645:: with SMTP id n66ls1606337oig.3.gmail; Fri, 22 Nov
 2019 08:32:14 -0800 (PST)
X-Received: by 2002:aca:dd0a:: with SMTP id u10mr13279405oig.130.1574440334071;
        Fri, 22 Nov 2019 08:32:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574440334; cv=none;
        d=google.com; s=arc-20160816;
        b=ujvLqvPJwBMzRfqLy8mvyPgBzEz0awnNjwztUdJpg+ISD8Ozk5JjpILS6ayAuv6Eo7
         84zZdJfeleRwzcDTxHEkyoDRrarqYA/bL/ClwU1wmmBArdqW02KxYY6tl7IAzd94ydXq
         T0++XGeFnZepLosG8kjpMLYaDFI0hzOYfPod7Ot2q5EYIZFr17EebFS/bvSPCYMFDC8e
         L0sZb8sNrJWTS7vcpLrcniMDG65EHRqa3DJ8fotcMxzvxdOJWDsMTZFjjtts5OBVUuO1
         Ion6PFWUAIlCBJxVEW16NoqpZz98Q7PUmvL4uV982mANhk88YWJAgzjahpSC1LgCEZMq
         ULHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ewg/yv2nDe6mNePO1hVyJcZEM93PzoLaB/4JIOpiCl0=;
        b=k7x8YJHMY+/gART1sECLmVs8/K9qxW2tI3H3KGg4AEfF5onTAhzCOnufO/+tDboj/W
         Ygh046k61zA+9U8X0LNB4mLTgyX51El7pPSX5RG5q9gufPmCrMSqtiygfuOyGykV3bPJ
         Wx6sZqWFNzjcQO8TJN9UHY/mZcSUEXtCSU/NXD0kvXdud5y4ry8JZkE/+mq8WyKRJlKL
         sPqwHiq8ktGF4lGCaK5GlohNFioeyYKDHupUgw6gIn5feCVInsjTA1e3AC7GRwl0ZRLD
         u/76dCKl3WxtNr4htMmVbzJEXL5r9qeudSH+PzygrrpkqmdryMesiSz8Zs4TsTKx3KIA
         HRpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=0OgC9EH1;
       spf=neutral (google.com: 2607:f8b0:4864:20::1041 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id x65si252316oig.5.2019.11.22.08.32.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2019 08:32:13 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1041 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id s8so3255564pji.2
        for <clang-built-linux@googlegroups.com>; Fri, 22 Nov 2019 08:32:13 -0800 (PST)
X-Received: by 2002:a17:902:968f:: with SMTP id n15mr14084646plp.12.1574440333138;
        Fri, 22 Nov 2019 08:32:13 -0800 (PST)
Received: from localhost ([2601:646:8f00:18d9:d0fa:7a4b:764f:de48])
        by smtp.gmail.com with ESMTPSA id m7sm369937pgh.72.2019.11.22.08.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2019 08:32:12 -0800 (PST)
Date: Fri, 22 Nov 2019 08:32:11 -0800
From: Stanislav Fomichev <sdf@fomichev.me>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Andrii Nakryiko <andriin@fb.com>
Subject: Re: [PATCH v5 bpf-next 11/15] libbpf: don't use cxx to test_libpf
 target
Message-ID: <20191122163211.GB3145429@mini-arch.hsd1.ca.comcast.net>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-12-ivan.khoronzhuk@linaro.org>
 <20191121214225.GA3145429@mini-arch.hsd1.ca.comcast.net>
 <CAEf4BzZWPwzC8ZBWcBOfQQmxBkDRjogxw2xHZ+dMWOrrMmU0sg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4BzZWPwzC8ZBWcBOfQQmxBkDRjogxw2xHZ+dMWOrrMmU0sg@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: sdf@fomichev.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623
 header.b=0OgC9EH1;       spf=neutral (google.com: 2607:f8b0:4864:20::1041 is
 neither permitted nor denied by best guess record for domain of
 sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
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

On 11/21, Andrii Nakryiko wrote:
> On Thu, Nov 21, 2019 at 1:42 PM Stanislav Fomichev <sdf@fomichev.me> wrote:
> >
> > On 10/11, Ivan Khoronzhuk wrote:
> > > No need to use C++ for test_libbpf target when libbpf is on C and it
> > > can be tested with C, after this change the CXXFLAGS in makefiles can
> > > be avoided, at least in bpf samples, when sysroot is used, passing
> > > same C/LDFLAGS as for lib.
> > > Add "return 0" in test_libbpf to avoid warn, but also remove spaces at
> > > start of the lines to keep same style and avoid warns while apply.
> > Hey, just spotted this patch, not sure how it slipped through.
> > The c++ test was there to make sure libbpf can be included and
> > linked against c++ code (i.e. libbpf headers don't have some c++
> > keywords/etc).
> >
> > Any particular reason you were not happy with it? Can we revert it
> > back to c++ and fix your use-case instead? Alternatively, we can just
> > remove this test if we don't really care about c++.
> >
> 
> No one seemed to know why we have C++ pieces in pure C library and its
> Makefile, so we decide to "fix" this. :)
It's surprising, the commit 8c4905b995c6 clearly states the reason
for adding it. Looks like it deserved a real comment in the Makefile :-)

> But I do understand your concern. Would it be possible to instead do
> this as a proper selftests test? Do you mind taking a look at that?
Ack, will move this test_libbpf.c into selftests and convert back to
c++.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191122163211.GB3145429%40mini-arch.hsd1.ca.comcast.net.
