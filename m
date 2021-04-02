Return-Path: <clang-built-linux+bncBDUNBGN3R4KRB6HUTKBQMGQEXNVDWRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id D77CF35268F
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 08:32:25 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id v9sf2685347ljc.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 23:32:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617345145; cv=pass;
        d=google.com; s=arc-20160816;
        b=LgcJxiiC9ryxvUekcBe2JmB3R+3kGqkjD2QKFu6+OUKk+dZGB8P2eL/IniAYBPDi/V
         JG9yvJ8IO7Pvaqac+s7ca1j6ypvW8i7vq/3IWI2ya7jjthPhEGBX6zALfpot4N5gfkNT
         R6C2JG/fJGc/OGfwgy+2klSv5coodLI+i/CNS/DZHLHQjhxf+n7RRjHzTi+9axDCWqb9
         P4g9pdjQ6PDp7HhTI7ivVu++rSa7W8k13PSRAJV2cok7VildqfN8dXk4BWRDXyTMr1lC
         hfnzVaxhvNBYVCe9FOMxB7jvP/iGbn71ERBoztOfKh/AdXwpEvSVce3VNGA5txzttLw4
         TDaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CoTMcCDg7WCuYjjAoiSayef949RfL42K5xOBhvIw30I=;
        b=PmBHjWG7JyFuVwyal2j+RIHEmPoVqjMk3RHXYsmoHuQNbkBlvMoBCINDR6+MiNxEFH
         OmoD6hebU7peikF687k8us9eNh4fXjr+qCQo+qLv9RBW3UVWo+/3/CiLidJO3hwYLTJQ
         kikh8lvOYeWEU58ld0NEQSnJXS1JIjIy2ST99JBuSKFQV6Xg1a/x5HgU4g9flrwvQGLG
         +0z2wFRPbJee3/7vrm/ZzIQkEcyBigpLsp+qqsspJCU+EWinSs/6m8m5DEPAdzwOL5Na
         y5uLj3TCshtR9aTpuHj3VVgjq+B7KJHBJAb1ZVQvy5BouBjkIUzuVw8+LTmQYfERMk1m
         prSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CoTMcCDg7WCuYjjAoiSayef949RfL42K5xOBhvIw30I=;
        b=YMWHOrwNYw3mdsLeQoPpkKKT7mcGHwXSKLn/InbuHn/sErNW0gtlswtxlAl3Dyu2gZ
         cFRuKnhE8mRlZbmOrhNXaoiuDDV1ydNIBZhPODsDhtqaifkqHRRKRo7V2BfzTqTkyhWo
         eO2yZJb6loGtc+vMM/UCQ6jbSZzrf3DNtloSCq0AtQfXYKYaszha2KcNX4ewikYmIHSV
         +eFM8JWnhkgq/7KcnW2AzsDHOrzr2GFg3y29UrOAGxwIzpICN6O0qfuw9VXRpHbpk5BI
         wCXo6nmZu2gMccZSgzREjkpN62bzoH6ReSR3Nz2jRKubhcKAmfeTiy5j29E23PzoidHd
         sr3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CoTMcCDg7WCuYjjAoiSayef949RfL42K5xOBhvIw30I=;
        b=c99RYE5vJftIIjlwJ99/bKEIhWkmSoKUVQ0mnZe/WU1d17AOw2J3DdtekUQECB6oQz
         jYTLQIKswjh8WM1IFm5/GMCNDxAwVLYbgEr6RpAn4+ey0YZvvBbXgBGpl1KCOxZn0e8r
         V//+6zTnCiJM8LOdz0kcJnYUudU/rWOwCrL26cEkYgKk93jDLLmgK8i4CVttD8FEMEow
         0ugW5VNxZrNJqdjRYN3SDDB63UnKBnZUf/IZSin+aAdF06lVT4UeNQhNeB1BQdkSd+xQ
         /IkyP0Y767+AyfIt6VIcgrLbU05OveyQlVAOw6gA7reSggk3kWBop+aPhJmvpSk1jZnV
         y4PQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Bi1T9+rNOp6UP6d5d4g8dKQyucqG6joqDXbp5z70p6ycY880k
	LKZRsUGbtQUUCfJ9e6KyJjc=
X-Google-Smtp-Source: ABdhPJwlG82mUJ1tvs0B+Y4aL9rovADi5QRyfe25Fu91AUidypK4Ecvfqe62qfJGClkge5z6yiQWVA==
X-Received: by 2002:a2e:b1c9:: with SMTP id e9mr7444043lja.39.1617345145143;
        Thu, 01 Apr 2021 23:32:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:58f8:: with SMTP id v24ls266383lfo.2.gmail; Thu, 01 Apr
 2021 23:32:24 -0700 (PDT)
X-Received: by 2002:a19:c0f:: with SMTP id 15mr8043657lfm.580.1617345143960;
        Thu, 01 Apr 2021 23:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617345143; cv=none;
        d=google.com; s=arc-20160816;
        b=d4Moe1swII092i6ABSBRpZtTci9tWKAk5idqEdkwdrGRfdC+vOtK0+/QcFk78u8WIt
         D8ij49VgWMJ71quXxrut/HD6ape4vy0PiSuHE9ibNVP1UYZYRVO6KMVuhY7WniCGGrtl
         5QqYV8dfALsiWn9D6g3izSJiihKmnguR2O6luDpU+mFryOGaTL8tRNfYoIh0/Dq9bqzF
         8thJDZeyItKEgmrT8MTb9YWlOf8cdHRvqF0nkD9isPP+34+8a3yqwulEvpdjN2iM6Xm7
         xtv5EOcOlHvLhLMiN19etICJCjxCSnyfcpWi5fQVaVJE1whCSXOzofdd/YbR8ZgLCRcj
         uUfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=G/vpzlyyM2rPbrSDkAuLYhmEHk5mVC6tRg7O69Zv9j0=;
        b=ztCguFEDkc0Xd0cvuuZw637V4+LwC/QKICOOrN7FQnscQmE5c9ECHT3dFyAmhckRsI
         lioDkXzEidcB+x0WWgcPW8wksbR0UPaaJHGav6HoBvXKv3XnQyshrN02VyNKF6uL/Y9Z
         63UW3oqFuRDs7oyUBVAgcyVWFQKkd61Cc4kC+eFqr7Rgr5fLHt3VeV/BPTfhDwrxniqG
         GY0VRpKKYigj9siehhoeLe7vKO7qZX0lwod4svdLENyW6dX8twuIDWdrlz7eIzwxh3Fy
         QkRZjsY+Y2iPAkbTLFoQqMA1Y0EWfDPv5GGbKzCSyeFw5VxJlb6SZlYGFoNwiBTGY8nq
         TuBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id f21si755814ljg.6.2021.04.01.23.32.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 23:32:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id C98B968BFE; Fri,  2 Apr 2021 08:32:21 +0200 (CEST)
Date: Fri, 2 Apr 2021 08:32:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christoph Hellwig <hch@lst.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Shuah Khan <shuah@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v4 3/3] sysfs: Unconditionally use vmalloc for buffer
Message-ID: <20210402063221.GA5260@lst.de>
References: <20210401221320.2717732-1-keescook@chromium.org> <20210401221320.2717732-4-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401221320.2717732-4-keescook@chromium.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Thu, Apr 01, 2021 at 03:13:20PM -0700, Kees Cook wrote:
> The sysfs interface to seq_file continues to be rather fragile
> (seq_get_buf() should not be used outside of seq_file), as seen with
> some recent exploits[1]. Move the seq_file buffer to the vmap area
> (while retaining the accounting flag), since it has guard pages that will
> catch and stop linear overflows. This seems justified given that sysfs's
> use of seq_file almost always already uses PAGE_SIZE allocations, has
> normally short-lived allocations, and is not normally on a performance
> critical path.

This looks completely weird to me.  In the end sysfs uses nothing
of the seq_file infrastructure, so why do we even pretend to use it?
Just switch sysfs_file_kfops_ro and sysfs_file_kfops_rw from using
->seq_show to ->read and do the vmalloc there instead of pretending
this is a seq_file.

> Once seq_get_buf() has been removed (and all sysfs callbacks using
> seq_file directly), this change can also be removed.

And with sysfs out of the way I think kiling off the other few users
should be pretty easy as well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210402063221.GA5260%40lst.de.
