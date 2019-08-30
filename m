Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBBOJU3VQKGQEAZHQV6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id E4534A409A
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 00:34:46 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id i2sf6483339pfe.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 15:34:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567204485; cv=pass;
        d=google.com; s=arc-20160816;
        b=cQf52XJi/wsWjCy8mH7t0ADM1ekrpVPXXVZxyEG9jDu+kcSf3je3tYcBbuOkSYif2z
         YQbrKZ1r9VpMT4gTKjz4Sz/+O0ngguwapFILU6N9mdZa7h4EK4vYdYkWccAjfZc1rgn8
         LTcoWe5cRFGi2bLN9vbWoKWnnTuB5QvJSw85m/5T9uXUolJLUEoYZAwAMbunV47l5XYC
         xd7/BxOIKIfGENuA4SG5pHXHBwzxwLJJZNd8E+ufc1BMYCNI/b9aPdC3L+HFdlMHZMDc
         lOMDTs5nZAgQWjGMb026OuQ1YgQUF6X5WoJX8NiUYaxsZfNjE7LT6/wRhowuFBfnzxuO
         ayRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zI73ZAghq1MReILmIvhB108tig0isFSIO4ODQlimAyg=;
        b=WkiuJOcowFgOJaalYlSX9e/n49jVnk3vkvbbTy3VkIcX9gYygspO19NWsC2Lxd87do
         w5HCqrnlgYGIzT2PxnKBuihstdFjHswt3OhR7A2obAZVLETyiEYZzwRTCudLst6ydk1J
         pW8Sc3fuWPzte0FIxU13NVaYLej1Eu89Y3wQBd6gg6ZOub47u+aB96eOiv/yVp6O0uwE
         ddg09epL9flPcqNEnyj8u7uf9NP6l9MHLqhkACbliEeIieSAxV0qpjbwvCFpCcwUgxQF
         74UF8LvX0J36G/vRWRvg1VyuA5+nVuU+yS0o98ZIBPEk+87ykc99flowgErlRaNC7wZE
         Gm5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zI73ZAghq1MReILmIvhB108tig0isFSIO4ODQlimAyg=;
        b=fz1un3msvi6oCZPvBtrPJyym2ZpGU2lRnLxfWVBkiRZeiNVeY/KYxl2gZF5MkOhEYQ
         9+zDzhJX+BVev9RKJQs1GXvsMzE4/PLHTlsFPsU1ijRAtkDS1Myqy6amcJtGrnkSOfWN
         pPw5QY/6iVZfI1LHy9VzGexLP61qysqbmAP+49oIatMtO18rKGJoVO4H+YSHEhOpHFCf
         832O7D9tr4V3Aj5aDsrsx0mnbB4MNmFw1YdfHgoeV8TqO9LE6JhOEslqVevEL6fPv45+
         /eXchvQqp3zi55xeaxCwh+Z3lPtjkrnhiDkAMaFF3pU9HSyMZroWvuiOWv6S2QdT/XIt
         Gj0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zI73ZAghq1MReILmIvhB108tig0isFSIO4ODQlimAyg=;
        b=FthOhgnSmZm7Y2lGdeVk+xkt/ATcOaf2HFD6cWcCwURToyBljAZnLHtaFtIZrSfh0b
         VEglJb605SzzEY/cVkH8wqoanoZwIeSLdnoXODokFjV6VSt6tna6HW6ZKAlE3o/8cZdy
         eSnf/oaPJ1I9joQHX8XstV+zxm3PeK6spBSKIajkky4UsA81vMZWtnM+GG1z7RD0OyZX
         K+T7DLOljOSDyN/tnSpLNYfSR2I5R85qba/0YfIzgsRArzt5ZVYZQN7ilOXI2SYk6ekC
         ni6Z2ls2rgFXhZLSx6moGYEQICRviL5SM82c13NR9sOccz/1v21/6AKb8skMYk6MiDnw
         6Sdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWyCIwMrANZNiwFIr9dy+gr2usDk7heVpM0RWV/vf8Kqe/SF33V
	ZtyB7e8jRSZ5M9wsY0SW8/A=
X-Google-Smtp-Source: APXvYqxMI3iFinr/NX/MG7T0L6If8POoSz1ZRelLBsl4VrVJouo2xDlEFcsy05a8JsJP9K+cbg8NKg==
X-Received: by 2002:a63:e807:: with SMTP id s7mr14312991pgh.194.1567204485457;
        Fri, 30 Aug 2019 15:34:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1c24:: with SMTP id c36ls1581978pgc.14.gmail; Fri, 30
 Aug 2019 15:34:45 -0700 (PDT)
X-Received: by 2002:a62:1901:: with SMTP id 1mr20964191pfz.172.1567204485197;
        Fri, 30 Aug 2019 15:34:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567204485; cv=none;
        d=google.com; s=arc-20160816;
        b=Ezo4dHFiCSd87Q2kG1A+pwLMBPBmx6IRW67aRNmh2q6tUIeMOr6nggGfruWMgUJOLI
         jZsFQIyy4gu+6OsMnv8T0KE8h7XMfbdoLmpiX+MfcXGhd9tiZfTIUQSJ7XVTwzVkUNAB
         7dAXQmGhuJnX2SESRfgHjiJiTFwtaxRkqLBd1SfoXej5HnaXQ86sWawJidRRMCgxeRnZ
         S4OxANWrWVFKxWZGBMq0CiXJz8ZJ9apuj7c+pBIPPNyqa0cxL7dsu/BDS8O/pgOqDjBM
         73XrK/X2EvXT7htQ4nwWk8TklEfgjzAiqQcNDYG6C8BNcZJR9Y7Er8cRANwzxV4IdBhr
         PQlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=3eaqEz7u0AlFK01u1u8WQcZgZGUs9CQKJmTpdkJFZNE=;
        b=WPYzTmyaGeBHBC5NK5zDFnJV0wF8N96YJ/CA7lIt1L77tnz0DlcBY91t4YxVV6TquG
         iXyok6XJmf/yg+X1gRUfGsrWvoOiDNeR0cJ0NGqbO8VaGts5npqNPx8wHJZR7cIXOa30
         /M9I9PoEuD8/mw0xdbCXCQechIzlOoua92iOhFZWpfQTJYK2tbbw8+7CdQxXV5FRykQw
         Xn5wBssw970AlWTtrLv/EqVLRRfGISni50btwzwegjCy3UXac+fpxyL0r8sKds9IchCF
         j/2a6i4yPE8POpA0H9OfHhd93/dXxD7JDdXxTiuHTy40949Jb/KWHN5anGn7JYGhqigj
         LHeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id a79si627009pfa.5.2019.08.30.15.34.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 15:34:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com [104.133.0.111] (may be forged))
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7UMYfOd001455
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2019 18:34:42 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 9CBBB42049E; Fri, 30 Aug 2019 18:34:41 -0400 (EDT)
Date: Fri, 30 Aug 2019 18:34:41 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: syzbot <syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com>
Cc: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com,
        linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
        syzkaller-bugs@googlegroups.com
Subject: Re: WARNING: ODEBUG bug in ext4_fill_super
Message-ID: <20190830223441.GA25380@mit.edu>
References: <0000000000006fc70605915ac6ad@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0000000000006fc70605915ac6ad@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

#syz invalid

This has already been fixed in the latest linux-next

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830223441.GA25380%40mit.edu.
