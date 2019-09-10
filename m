Return-Path: <clang-built-linux+bncBC6MFNV32EFRBHH63XVQKGQEKX4CIPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id EF704AE898
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:46:52 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id ba12sf5717746edb.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:46:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568112412; cv=pass;
        d=google.com; s=arc-20160816;
        b=YAg9olcoR1qLZs3sC7AsuPfqbqC/jBeStLrKvv0y8KiAbqx186yjJO89o9u6pp9lAZ
         z1Ix9p7YEM7l9I2l46Ny8gzXOdRiBpdQ0KKR2eULXT9Lfm4ibDtQ6HNndT3ug6wMyFFJ
         yiXwCrAFicn6IzuErbgtMCiRwMImtsWH0zt+eP17R90FUm1Himoeg35fHXVo/WhGkjuS
         0EWQ27sNR9a9H4XueE4shBcaH7Imm/sQIkaLxwxTmCYS6QLYTP8Ahp6tTcZt3+9f8UAu
         YvxIoyf+zH832+FDkn92LO1Ti3FM0TSxTQ/z7ZfdgZqNSifIax2eDOlETjR3XYvmU6Gh
         QANQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=0HLcKLxMe46ErMmMInIEfCvjwnR+4fsaXCN6JqQX5UQ=;
        b=qXTPzAlYaUE+Ioj1xw3E5vsr9oZyE+ieVOM0y6biQP2GpZGKy3YIYelLrpb4aGg9Mo
         92VBqVWbPNwzmXJVMGKLqn4hhf8VJHjQF2k1i2ZXz6El5RuqhKbUi8GPiefFHRwmT4mm
         YLXJMrvc854od4nwE+XCpN4i56sk6P6SzVmLHTbwv3+ihh7N0Ke4YEYm7fLxMDY3LY2h
         tKTwsLCPts2BftV53866A1k5GBQ34WEGhHI4IbRPgLkHT1Qb34d7h4BfdMAP6reb5Dvw
         1NAq3eTLZd06ee4citF99fSkiTEihIwOBXcKs23ZRAWJhPShOxrO6Ids4E/wLUKDq08s
         oh4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b=n4LbfsiR;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HLcKLxMe46ErMmMInIEfCvjwnR+4fsaXCN6JqQX5UQ=;
        b=OX0vQgaOsQrzZrwCO9LmmPtzOQP1wSP4zQYUUygRmXTzcTD/Q3TFCA2I1H/EeIOtjm
         o7zswfhEcQEqKYVUDLOwunoILU0czYiazgS0dv4vem8bRPWXqCAvQXkO6BrXuwtmrwWA
         x2saITwfswVyQgKAc2VjlVTAS1j1ExYRI5IQvZrBU1mFaaPc1udbBuKdqhvhRVtungfx
         PD+PYBzT27KXmkgFZNQAUcFEn5U00bGvHsF9Jrh1hrXyEqg7SBOYQVLMkfDbqIZ/qtp5
         p4PGgLDxIJwBrLKR1wB2U+HSQmOlUCpkqICc99PqdvwaiHLO0UgW3fUZXoLTKfw1cGb3
         mMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0HLcKLxMe46ErMmMInIEfCvjwnR+4fsaXCN6JqQX5UQ=;
        b=an0UeTAx9h07UnQBpxeL/++TJ4IFwDPepu/Pv9wmv402OhJa7b7jPpEN4adVs4ckSI
         fNT8kfuGgdCkJeGE6quKs9MhlF0GfhB/bwqovrdyhLGJkOhqg3gJns8BdadTe4QnfxEZ
         y5qcJIgr3SSJtpSZEP84C1sWGZB4Rr8XqYOserwguj0VvaAmAwNP8WtgMXsw0FMmWLh/
         bifYiv/2pI2+e4nU6sh2MZtDKM/wnN8K4vdw6W9dECh/wbzAbQRiP2CcZ6FRJRpt3H10
         0TQxS5WMMHWcXniCPMwlxuRj/gTN2NGA7PE7VAnzV99fDeddZ3DIDZr6q2jr9gLWeRnq
         diuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUrCaLNOeXPIngU8moN4MYbpT17aq9lcytzX786Y7IrzHXfmbaH
	BTe+LYXWTvcrUAr7uUe73N4=
X-Google-Smtp-Source: APXvYqz45CVyhVuTbrLOzi8IvoS3F7FiYnyw4FmzeYIT+ubIjR5AdO0US1wzqWbp8kx8hXjYY49wQw==
X-Received: by 2002:aa7:df1a:: with SMTP id c26mr29304288edy.106.1568112412718;
        Tue, 10 Sep 2019 03:46:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:aed2:: with SMTP id me18ls3704543ejb.11.gmail; Tue,
 10 Sep 2019 03:46:52 -0700 (PDT)
X-Received: by 2002:a17:906:d29b:: with SMTP id ay27mr23621184ejb.141.1568112412367;
        Tue, 10 Sep 2019 03:46:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568112412; cv=none;
        d=google.com; s=arc-20160816;
        b=m3Kv1z6IqBcoFcSr2TRkh66NayIPpYxF++f8zsz7fYiHG59r+wYlO8idpKdE0A/C2V
         5X3o2B7hUTPHiEX6sSXoQBfQsbLn5q0n+uvSw66D0aMnPIbWS0bkCuH5gdLYb2dwhKwp
         Xd3Og6+bgin/dt1byOJx7hrrKFvs/PQRFyDJxI+tv/XFgY3M/YLRrBaEOUPjIdXq+sKm
         lH2uXFV6VBgQSBMp4C1f5WNBK/xFKhP6ULwQGKlYIMlxoRe68VCgXl4cHQdQj3LTr1DJ
         WbYGTFfWo/1oBF9Y6FF0E7+4VOCMSx8NwrhTS4pTIC894mTgIEwOHJvcJ9I1qHvOEvnG
         mZRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=uyraNbBmmkbMfViHOc096IVYSM7nk5xLDXtsUxDse+U=;
        b=EBSPvGzmkMxnNt+FtztppNPiA9Osy+KUd9U0nrW5yObQrQBnzIm2IH3NOpfvTa5Q2d
         XQ7jBPhv1UFyPuLdC+dpcUUbDmSIkpj9xoCPOORb/BdylD8WU9V6XD/QfRcez4JeckZd
         XC5S2kCdBFknFCp/mxfElWoY97AFm9E04ZeEJriw7j4cjLIgbZvCeG2lfYGqZVN3YHoO
         JlCywEErzyR63v3g7Stdl4Mu14U+5RLvo7PpFdfPNcSHJoetVhNAgml/Ioqc81AWKmWG
         CYWZPRSUSc1Y7TPbgWL2k0TsKU6TZsyOihI3mitCF6Ux9FB8hmrj/HQZM8JFFOQhtVnf
         vtDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b=n4LbfsiR;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c31si589460edb.0.2019.09.10.03.46.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:46:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id l20so15928944ljj.3
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:46:52 -0700 (PDT)
X-Received: by 2002:a2e:6c18:: with SMTP id h24mr4979333ljc.227.1568112411723;
        Tue, 10 Sep 2019 03:46:51 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:29f:2049:ec7c:4ff3:ee75:27b0? ([2a00:1fa0:29f:2049:ec7c:4ff3:ee75:27b0])
        by smtp.gmail.com with ESMTPSA id e29sm3664764ljb.105.2019.09.10.03.46.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:46:50 -0700 (PDT)
Subject: Re: [PATCH bpf-next 01/11] samples: bpf: makefile: fix HDR_PROBE
 "echo"
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, ast@kernel.org,
 daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
 jakub.kicinski@netronome.com, hawk@kernel.org, john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-2-ivan.khoronzhuk@linaro.org>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <55803f7e-a971-d71a-fcc2-76ae1cf813bf@cogentembedded.com>
Date: Tue, 10 Sep 2019 13:46:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190910103830.20794-2-ivan.khoronzhuk@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sergei.shtylyov@cogentembedded.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623
 header.b=n4LbfsiR;       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com
 designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
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

Hello!

On 10.09.2019 13:38, Ivan Khoronzhuk wrote:

> echo should be replaced on echo -e to handle \n correctly, but instead,

   s/on/with/?

> replace it on printf as some systems can't handle echo -e.

    Likewise?

> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
[...]

MBR, Sergei

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/55803f7e-a971-d71a-fcc2-76ae1cf813bf%40cogentembedded.com.
