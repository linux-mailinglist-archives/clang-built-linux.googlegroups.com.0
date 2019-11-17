Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBUHYYPXAKGQEXA5XBDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F3CFF871
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Nov 2019 08:52:50 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id m1sf11532999pfh.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 23:52:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573977169; cv=pass;
        d=google.com; s=arc-20160816;
        b=x9u8I1aIFWBK0/vHSx6ZjhkBpQ/fnCFyxu7RglTwSCZW2qrWps80h9SVc2cXpfFbx5
         ijVGm29RGumhCyrkmS3p3CAyid/c/w6OpnkjNGj7zUWP4qpm3Iacp+RfmBwLWMidkpxT
         Iy3otRlr2/5qb1tc2LLGQdSSwrfHJD2q0l7FkB5CjJ5y3P8Ob2lhkrm4srkqjtiEU/3n
         LO6Ob3OEquq7Uc0tGmQv+Wsv3/eE9VZNyOEZq3YPI8cy64Ru3hVWoAo0S7hylpDtr3kX
         F2QS/7pyFrwYjwaE2TYALHF4S7b/WYLWtYhJfVmIUPJcqCndbDVwIBzUZD2T2KYOg/2i
         RRsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=PywEDiprN52DMbNs30RZ9w1CQpJl1hG0CKkhp+REO2c=;
        b=eft6IpNOBfBxPWVHgsz9rIhkdcEIixZUhZ+Fbf2rX+xFWwkty8BO1IEEzTXVQXcMzp
         89sZvAXjzeuIDLwNvytLSgr+Q0Ujyz3n4TLcqvO8GbmVIhsFgSJXUTPO3tDvAHRvC/1i
         4ml0aVpe4vJy5UzBRGDbYuhBxC+0ET4BSMkoi0e8TbvOBj4FAQjJaEJAvpj+kdJ29MbH
         1W6tLeJUauF32Pk/Uq8C1A08rtNeapjPQxtM0i/sL/NmWY1vYnMpmvHlG1LkE7mpEdr4
         nEcHygLua2i46AJ3K6/qPpLjxuyyHD6+LV76QB7CtMIFU+NaN/UZ+Zgy957AfrboEImD
         kWaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EKTZcxcC;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PywEDiprN52DMbNs30RZ9w1CQpJl1hG0CKkhp+REO2c=;
        b=SZKHmYxh/Yfl7wNWPnWQSsRkFinitV0zY5k1oxr/mnI+R+a9BI9fcga8d2wZbnVmhV
         rLipvzDcOiIdxd5a2pNkATy3rVQN9vf4RCqRfawTyCxEidoTjuFemxBQzVs0W6fh9/F5
         0wLfaAFSx51vbgWgWjFp/9nR2hpwazc0DOci/4haYSWRdducCLOA7dUJlmtLV1tL3W80
         87O3JHTYISItW4bXyzP1moGE8CcfnqUwn8106ZNnlTLSHTn/Jwwch4f9f+ui6n6/iL/A
         SEHCTFo1/X/p4XocdCU8DfVAR98TwKyCP9uG9yn2WwUWhP0m3SvK+RNjahf9KUTNfO7V
         iPuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PywEDiprN52DMbNs30RZ9w1CQpJl1hG0CKkhp+REO2c=;
        b=Jpll21Re7jwW3MmrdZmu3lc3j+9MbLZE/S+2uADPLskqdcvVGGS0gorbHxUtCNI9mn
         HyGuUYIy1NCc0m+pFuEiUZICf+7TKICe3Ku/Ufj+jn+ezK2LvgZ30uhc7650l93UAist
         fdX8qkS3FQGnoGT8Fn1eib1iwJvaIu9mrVgCy4XXOv7nevJMwEetTfH3+rmznBQ3K77H
         AERIZjwi1RAxN9L3ExxAb4sbZhQz1RlsL06N6ed4ukFwOp0RkgQO285SW7eciabcp+wH
         HGFLZL1FMCIcXnn/bWScnV1anxpgXyShfMhPmA5YmUdgbbiTdVcXL76Ra2Pfhw7lIM5S
         7ELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PywEDiprN52DMbNs30RZ9w1CQpJl1hG0CKkhp+REO2c=;
        b=UA34WHagkK6fiVrExIi1E7hzyrKFLmAo9V/diVdiu9pVGRI7lT0aO79B8NnVM2e3Tt
         OhsrY+Swq+d8J7dowb7ce7GxkoUrBg9gSw/a2d5j3chmyKT0UuHl5hzsxen8v/vSBDq4
         g0uiXWeIiOf+sRX16JOWthZFkpZRmMccJsmKWQTSaQXxQ+pk4rl+5d3DqqBdYhPabrUE
         wH0ZsmAhAt1pKjnwmeGbTI1ncfJQHin+t5LygcpqLmtgz6VOElxNbz4z2xPj6aC1PJSs
         IVYXec/E3GjpuzKigm/rEdcDm5mnqpOjSU9ksd3aHePtWux9FuGDl0KsJTszZUb22cef
         ShFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXK5G6I8txq+W2Hei66kxAa2sLhO+czqQT05ajsWtd50MnmT7+4
	Y5ZyHHEBwCuH5+AbOLMKXAw=
X-Google-Smtp-Source: APXvYqwjau9k6wCz56mvx7RbkmKAp1Ui6FDVO38mBv9ohIhPPnqbULlhqeK8sJeTYa3fgCoQa9bo0g==
X-Received: by 2002:a63:4a50:: with SMTP id j16mr27037573pgl.308.1573977168575;
        Sat, 16 Nov 2019 23:52:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6c87:: with SMTP id h129ls2957838pgc.3.gmail; Sat, 16
 Nov 2019 23:52:47 -0800 (PST)
X-Received: by 2002:a63:f812:: with SMTP id n18mr26647555pgh.109.1573977167918;
        Sat, 16 Nov 2019 23:52:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573977167; cv=none;
        d=google.com; s=arc-20160816;
        b=lmZ/D8j4l9AOHHCK7GCOfHNgs9noukBKSNVZ/Zuhg7VMxEOAmRiF3noK1dPKFKjUDF
         7mhf40hNZoKdrRMpKp7ko6In0PEs3gt3Vd/kcijrvCJojGx+1LukDP/IlAFetaia2nr6
         JOL2s0Sl6Vo1OyKwqDDeWBYXy0+FyX1pGLYFzyrQZkXE59SbAGtjQcDT/AiNxLCSlavQ
         ApMTg/08/aEFxe4jkaaK2xwTH9Jo6v4XhfjWN2Tilji3qlOpYhV9Osc+BN0mE86Y5dmq
         9/9wGxRjvLap61cCjgTPG3gLntCNuL4dILsjQMc3kzXlyQlWS+56X2256vRUArvYgm27
         aohw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NQ8wLUVg4UWtzsVd8+X0xcuuie5AtEAMQPYAlDnD20k=;
        b=CUT/2VfLlIBKKrTQuxxdGq2Gn1ECuihLJ80KAiS1Q7Scwv+FXNKPpRxabB9VyD6KWz
         M9FpV+a8CsbEjwhHVcT95oHC3tVOT3alszIz9l8vTRaHxxhvxbrFmINEuoWT7uUB485u
         3aP3VntoZKJam0RzDrh7GqqSHW3WQSzFPyz4MPpIaKcKh4PBx7PTaw9y2VSCp8Qgpv7e
         jYZCTCXuZxZikW+d1L3Oy1ZTntqGo7bTG2RWiKga29sc8zU5W96IPu+8wDcjKHwK3duB
         ub96liK7NZoAMvzkOq6Nk0CtCZiFpog8zzed2QZvVnbO17gUMpEQR4G40EjF8JhIELKp
         ltVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EKTZcxcC;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com. [2607:f8b0:4864:20::132])
        by gmr-mx.google.com with ESMTPS id s144si706452pfc.5.2019.11.16.23.52.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Nov 2019 23:52:47 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) client-ip=2607:f8b0:4864:20::132;
Received: by mail-il1-x132.google.com with SMTP id d83so13028637ilk.7
        for <clang-built-linux@googlegroups.com>; Sat, 16 Nov 2019 23:52:47 -0800 (PST)
X-Received: by 2002:a05:6e02:1014:: with SMTP id n20mr9807320ilj.221.1573977167270;
 Sat, 16 Nov 2019 23:52:47 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
In-Reply-To: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Sun, 17 Nov 2019 08:52:39 +0100
Message-ID: <CAKXUXMxQMikLOcVJk5v+r8H4-9jcDjhhtOXt9vuvqWBKjnGDZg@mail.gmail.com>
Subject: Re: [Meet-Up] Call For Presentations
To: Bill Wendling <morbo@google.com>
Cc: clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, nhuck15@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EKTZcxcC;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::132
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Bill,

(sorry, for the late response)

as already mentioned in private emails and on the google form, I can
give a presentation on exploring clang thread safety analysis on the
kernel sources.

you should already have an abstract through the google form, if I am
not mistaken.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMxQMikLOcVJk5v%2Br8H4-9jcDjhhtOXt9vuvqWBKjnGDZg%40mail.gmail.com.
