Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBSWRZH7AKGQESNIDJEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D633D2D64EA
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 19:28:27 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id b11sf4462822pfi.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 10:28:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607624906; cv=pass;
        d=google.com; s=arc-20160816;
        b=nbOaHreKt8vPACLw57ap6nrQqPH1inPKwGOAhtpmNdLbYnjprAFb503kFyo58Y+2F0
         gI/0V5UlInxJmcohL7s6ZSb5RsO34ducMEe33C9fX+Nuun+nceQHQUkYbI0lPrOh1VXy
         4QdKhf3X7GiUQDlowiHDQLq1Z1vC3DXlxxf/XM58epSv6VAteqDkQOsbhNKvMl4MSjWE
         JDX6aUsNuBy6EdscHXoF5/hOyV70QXOPrZzBWqAhdi90hzZKfbcQOI3nAiiG85LkZD9n
         91Kmxds5bVzmI8zbxrO1d8UfU8Xa5FOVl5kjfVPdOkzvqtgq8H3xKGl4atTru5jFDb6U
         pRIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WzAjv6esy1QXbmjRHvoo6/YFKyiQxJ2upA3uchX9iRE=;
        b=PI7FrUj/9fN9elPWt+EMqLUrUEWJMseaY0yUGbKxAth7mZE+Thdhsj1/GrXKiPZFEe
         6jzkYg8CtcTu13PiRmDocMRtQ4hlAiek/SJx/IuxvtehZeQ9mlTFJmQrRn3VMt7jEfnM
         4pWowImRy3nr3YS3zTuu1eovdm5psXy1uHBdv4Llcw9Q5Su4A27RQMy7LI21KmtHTDlg
         mC2pANUNRXCsAWjXiuYYomV6ySeG9u4HJGglW0kFCO2ihLEvdNvReTSEWdexVW8OU4Yz
         ZyN/uiTSwrREHam+8BIQPAbvN01Oy4yajXOGpZTas3o2ldiw4+BtE7g5/Qury1702BEN
         VJnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WzAjv6esy1QXbmjRHvoo6/YFKyiQxJ2upA3uchX9iRE=;
        b=XTOitmAYzgFc4P0TdNDFkpwjKwvHLyXNRVkyB7l8Z0cb8owX4BLLJ1Poktx8HSdbQW
         tZvHS0jl0u5D5l3+F4RoHB3DKQH1fkSIocDUI79Uug1hR0p7L7KfgvLpXwoETtAlwjEf
         /+GoJETjDKXQqy7Q0LscrTf6qKRXrZoT/TiXHK3ja/dP2bU5yn6r/Gra9/GykYvrHGkB
         ZWsIFZlYiEG0tnJXfUuQ3K7rHS2GYBOwQe0u5l4EN893uw6Lfkc/bcoxO1Bj4wfaTL1Z
         kCzAhRVqu9yX53AqqVzk2xZesnMykiAwJFjOWF7t806Zbq2720o5+IjQZbmhdZVDCj0t
         3P0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WzAjv6esy1QXbmjRHvoo6/YFKyiQxJ2upA3uchX9iRE=;
        b=GeCaSYEY8sEhWqatbrmQxtOQQV37tSbjF5Sr+SdlEilIVHd5tITYlhnVGBKzdc7PBP
         rsWRj6rxS6QjmlBprmHUwqREOQL4VhfAkgmGl7YJX5J2ipBRtY8YpitwX+KAVSrzqNv2
         9hvtcuuTqZ6C+YYGNHPP7cSvLPq5hBMygGaL9+CXYyI9NbdUXjrQbpUY6rdoDu4pF0DH
         rkV4D6oBjM6kBMJVIfqj2wTpsrldWf5bzFvEC6e9ORJKkxD2ASXPT6qr+hJTzA9PSIF5
         NrE6/cyOyJvXLcmmMumhnihLBnepdK808mBnciCX+ldNXTCzNnG5dR6YNALOje1HNjg0
         xItA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gUvhFN3VS47DHgEK2Rtf7g43Tl4JTcubxV/ChpwbwzEsVB4Ab
	0JUkOdC+pCMqo2Ubnqzt5XA=
X-Google-Smtp-Source: ABdhPJwqi/QD48yGqewW9blUnv7+jYqyOPpSDwDh9w4cXtuYjSWHKMTfANkx8NUUoo3JSARuLw49/g==
X-Received: by 2002:a63:cc55:: with SMTP id q21mr7877152pgi.78.1607624906334;
        Thu, 10 Dec 2020 10:28:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls2829447plr.3.gmail; Thu, 10
 Dec 2020 10:28:25 -0800 (PST)
X-Received: by 2002:a17:90b:1894:: with SMTP id mn20mr8946840pjb.100.1607624905686;
        Thu, 10 Dec 2020 10:28:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607624905; cv=none;
        d=google.com; s=arc-20160816;
        b=JfsidfQ/FYkQVzbSIga7LRiN41e9TrmzLcpm/CzHtsxN23EOz0mci7PVcPuNZrgcZb
         NR2cQNjwtlDxDxh1wvIOzxr20iy/pZxxkPPH25+UdRf5V1hpl9oxT70tDs/cP80N53td
         HqbOIsG0ugEn60aRs2Y6SgIYj8ZAmylz69woNLhmaMRAEaS2x6A3jsyBOkVhxzdOqLHA
         o2/SZ6kjW6KI+8tstDv4R4FY9BmEE3i9tc4UGX88X/5pUN2SpnOzdtPLs6NUv1EsR45U
         Hr1h0i0KFkQXnHglNvvTuhtgKzhAtQCeECJgLAd7tUdSOw6ApMJQe00pn/aMOeR9lxoB
         SAGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=kd7dU9AXFieMhmYYrao/QQtI7TDo0IpBCFCvL5JfAc8=;
        b=cVOPDVrq8r1GaGrJDCh+QDZ8i7mjn8IFRVSHg1lT9Rui+puDPCimgJtP2MqHpAzEyh
         /Rc9ls5xr6XerBHqGgjs8Dn6kgO6/NtDsaAUfjk9RtVS2SUNJ7nfyWW1KYNt9Up72Jgg
         nGzs77AFiulz2aiowGEdNGjaoLB7ZUj9PZxc+XJjlVZD6YzKdBUI7w9J8Z9kkTz6B6xk
         9fNHRxlKmmC/NesD7A0FDz8nVYV7h1/z8zGOZN5P+Rgy5XFtIQ9+jfU+A602is84jR/t
         /bw5Pfpl/cClEMapTU5MX8Fr8ZWdhKqX7vGYmLo/Ar+vGUp80fo5wOxXUKLNJ6G+TOGk
         5v8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id v8si514612pgj.1.2020.12.10.10.28.25
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 10:28:25 -0800 (PST)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from callcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 0BAISLo8017856
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Dec 2020 13:28:21 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 14282420136; Thu, 10 Dec 2020 13:28:21 -0500 (EST)
Date: Thu, 10 Dec 2020 13:28:21 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: syzbot <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com>,
        Andreas Dilger <adilger.kernel@dilger.ca>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-ext4@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Subject: Re: UBSAN: shift-out-of-bounds in ext4_fill_super
Message-ID: <20201210182821.GS52960@mit.edu>
References: <20201210023638.GP52960@mit.edu>
 <00000000000024030c05b61412e6@google.com>
 <CACT4Y+bkaVq1RzONGuPJxu-pSyCSRrEs7xV0sa2n0oLNkicHQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+bkaVq1RzONGuPJxu-pSyCSRrEs7xV0sa2n0oLNkicHQQ@mail.gmail.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Thu, Dec 10, 2020 at 09:09:51AM +0100, Dmitry Vyukov wrote:
> >  * [new tag]                   ext4-for-linus-5.8-rc1-2 -> ext4-for-linus-5.8-rc1-2
> >  ! [rejected]                  ext4_for_linus           -> ext4_for_linus  (would clobber existing tag)
> 
> Interesting. First time I see this. Should syzkaller use 'git fetch
> --tags --force"?...
> StackOverflow suggests it should help:
> https://stackoverflow.com/questions/58031165/how-to-get-rid-of-would-clobber-existing-tag

Yeah, sorry, ext4_for_linus is a signed tag which is only used to
authenticate my pull request to Linus.  After Linus accepts the pull,
the digital signature is going to be upstream, and so I end up
deleting and the reusing that tag for the next merge window.

I guess I could just start always using ext4_for_linus-<VERSION> and
just delete the tags once they have been accepted, to keep my list of
tags clean. 

It's going to make everyone else's tags who pull from ext4.git messy,
though, with gobs of tags that probably won't be of use to them.  It
does avoid the need to use git fetch --tags --force, and I guess
people are used to the need to GC tags with the linux-repo.  So maybe
that's the right thing to do going forward.


	     	 	       	       	   	- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201210182821.GS52960%40mit.edu.
