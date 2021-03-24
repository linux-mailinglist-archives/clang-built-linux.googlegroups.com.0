Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBCXK5WBAMGQETW62H3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 10666347F2E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 18:21:16 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id b127sf3021183ybc.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 10:21:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616606475; cv=pass;
        d=google.com; s=arc-20160816;
        b=IW2TA8zRDsnffR25VTJf2wHF8p+NrT6xdosojSM/UOCLpzxtwAfMI+hLQzL1uPruCG
         UkqKk/Qeg0uXXRj2BfIpcqw/79BIXdwau7PhM76lCNIeAWObNXU//UE18UvnE9sVExmj
         qBjs0d1BjcT+7alNH7gDDoh17PI0YAyPjlIJfeY1eY2jZOGaQ9GjxkkCZPi78XOjSn0p
         8PZwgVnTkS7700b6asI2cCGzTPqXifcI34SUUZ57VaA7HcZzRGS0FGrEWimKbR4HqXqG
         qgYv+V0tUZpUl0ewhlyy0J1695Il8z7dsIqdd5yotaiGpvRd2o/4PfIqBGPP8fyE4xSs
         tBhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qGpA8P8YaWQtS9tyx3eC3ErIHrIqMrqW8k0Y3OQirM4=;
        b=W4F/nYLHihOBQkif3ENzbS6J+KxuRDGDABY3hENpMKNBJDmZv67UaRr7SxJnDlPcm8
         xEkVumAliS1Mvwt4e39DAq6yNhIkir68SXQyFmEXvd/5seHboBdUNsi6RsMrjR4dKygE
         cmLng88vAtkegTJ9XK3Ls99+CWpsLLN5J4iOYidLWhh3s/CKLrZsvnqcFC4GI9NWfDIe
         G7xUoXsS0Mols2OjohXJY74VQLjCAoXalSOd7ymK8sTLiarpRNP4v06omU77qeoY0XIv
         Z93OuSXXTX1mcQQ8kzv5Yfeosvp7OVA74tu/+Vd2r5lv0g01SyLHqOciUI9zC/7nJmKv
         LVxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OUBnS9RN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qGpA8P8YaWQtS9tyx3eC3ErIHrIqMrqW8k0Y3OQirM4=;
        b=Nny8mfWUNymSl0kDm6F7tDJ06fnopxsqWcn7SCiwQGwPAZXCM3+oVCZBmgu/HUT7hV
         kjo/BAISeS2v6NRKCv3LksmtO2TSu2ygEOqpANBVsnt/LnlPiFeLofz/Gy5z2nps3u5k
         yBllvhNGZk6YoPZ76jCxPuQMFCZwR1ybt+i3/uQn/gmUZX8QZeq9ulc1JzSojmBQnXwH
         sZkcFbvgaZSLOUGCGeqOzqS1KUlCCtHPjal+LcqDB7v5HtCBt1ZNJ+OQ2NCvLucVw393
         /zuTrXyRVUdYIlTWvheKVdCFv8GSRQhziIVGpLQ6bkfxRLvm1QdJfFoAAtCa5d0Sk39D
         aavg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qGpA8P8YaWQtS9tyx3eC3ErIHrIqMrqW8k0Y3OQirM4=;
        b=YBxqq88P31grDpHYFlrRWcSN18m8XuJNXlYMjFVYpkmdQCsvEYCSClHMFhYJ9mqgp1
         LA5yz/8359q8CNrIiNIY6uZoWqjDe/mVilamojpfNsdQcH3UGe+tij306jMLgE4rY3w0
         caPaWhXqesonTaForbYiVfWpwKI8oebLZ2IM/2rgJ7M7YTdTBbHr9OGO8UkdHI/grrIA
         XbF9GWjQWTlSc4TzlXWj+klrzzUxDO/J/0UPOQCZwHVCuo+bvSm2Ixx7oqhs0bNI4V/F
         VHzhayKXFeJv4FgSap7MVzyt2F0N0HzVjl3yqQEErnR5nVVzEAEeYUHhgvrEVm6C8u8O
         NjUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314cX+0aTLQrmIIHP/0SWTOJj8x3VcISTnSinj8oC9qnY68ykXb
	84P1gYtAs4objd6QkqWPkJw=
X-Google-Smtp-Source: ABdhPJxUzYBAt9mt/jEvJJ/RnWwCeY7fuokgP2pVltUYugZq/OyWEgQOeTCixdvmr3k5O4fmBxd8pA==
X-Received: by 2002:a25:e90c:: with SMTP id n12mr6294865ybd.207.1616606475112;
        Wed, 24 Mar 2021 10:21:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:fc23:: with SMTP id v35ls1374292ybd.4.gmail; Wed, 24 Mar
 2021 10:21:14 -0700 (PDT)
X-Received: by 2002:a25:a548:: with SMTP id h66mr6648390ybi.38.1616606474680;
        Wed, 24 Mar 2021 10:21:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616606474; cv=none;
        d=google.com; s=arc-20160816;
        b=Tl0IQXBRozjIpB4v+IvWKqJfLC6sGUHOKjvLoseLFaXkYpGGZnwwXWEjfigkXK/2fD
         evWOoFINXgmulJ/7shxiS+CB5LAVJnt1vV+q85qwH/n9UlIY1flK0cq6V3mwY8CzqQUu
         tWsWci4+kTSwICuuU7zs2JHOpyY6KuiAgyvZs7wzGFw+in9G4ISd0UUdbED0/gB1qDV/
         atTo7KlS/q1LdnMHrjveto6fMMmCDtN3mtEF5nSVGshJ5Kaj312Li2BUYaLpeaQ7haBr
         HdTjeJCpHOtVaUqNuq1ZtGZvn41T9tNRfp604UIs6i1QzMguxN267k4j0hn39upOigDo
         xLpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gbZmpP2lcXiWXd/Q+5nyGcYw492YBmb8DZByU4kkOLo=;
        b=QgfCyBeJzq5GKuQtD6+/c1Vu6CKHNnm8Zb+24e/93Xpq/Ttr4SGmFe445QFJuf4wlR
         pAdXSspUmiXoZlCDSN93ObbGjyE93ajVLubLrG5Jg1JxPh9X3lHMYULxP5gqLUFYIbII
         BLmK/dFqpU0lZtaG7AsablGeHHxXaF58Jh+zoxA1juOtO5BYzYXyqgijMyeYYTT16r6C
         /xyFn0am1HCR2D5StCP8Kxy6hJxsvqRH67KHLm/HvW7e+gqolv9E89NfpxDtBW1IEnp/
         Yt6vuWP98NmUP3YubT9pAJH13MgEFawaDCLMmNSrICnrat7sAXDx4oCZwsp3fti+hnLP
         iRPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OUBnS9RN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t17si237651ybl.2.2021.03.24.10.21.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 10:21:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1E1BD61A15;
	Wed, 24 Mar 2021 17:21:12 +0000 (UTC)
Date: Wed, 24 Mar 2021 18:21:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	mike.kravetz@oracle.com, Nathan Chancellor <nathan@kernel.org>,
	dbueso@suse.de, Andrew Morton <akpm@linux-foundation.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: please pick 552546366a30 to 5.4.y
Message-ID: <YFt1Bx32z8UiLJcl@kroah.com>
References: <CAKwvOdmCpMf1Zp3tB=oqse6-Bsm_ybJQ=G5h__kEuOa47CjBHg@mail.gmail.com>
 <YFtxnlHk4TLqtP5z@kroah.com>
 <CAKwvOd=2k_NaC1U9MwNHzfCHAfhwi55fyoTa+AHFM=drh9d3Ng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=2k_NaC1U9MwNHzfCHAfhwi55fyoTa+AHFM=drh9d3Ng@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=OUBnS9RN;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Mar 24, 2021 at 10:09:08AM -0700, Nick Desaulniers wrote:
> On Wed, Mar 24, 2021 at 10:06 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Mar 24, 2021 at 09:47:49AM -0700, Nick Desaulniers wrote:
> > > Dear stable kernel maintainers,
> > > Please consider cherry-picking
> > > commit 552546366a30 ("hugetlbfs: hugetlb_fault_mutex_hash() cleanup")
> > > to linux-5.4.y.  It first landed in v5.5-rc1 and fixes an instance of
> > > the warning -Wsizeof-array-div.
> >
> > What shows that warning?  I don't see it here with my gcc builds :)
> 
> $ make LLVM=1 -j72 defconfig
> $ ./scripts/config -e CONFIG_HUGETLBFS
> $ make LLVM=1 -j72 mm/hugetlb.o
> ...
>   CC      mm/hugetlb.o
> mm/hugetlb.c:4159:40: warning: expression does not compute the number
> of elements in this array; element type is 'unsigned long', not 'u32'
> (aka 'unsigned int') [-Wsizeof-array-div]
>         hash = jhash2((u32 *)&key, sizeof(key)/sizeof(u32), 0);
>                                           ~~~ ^
> mm/hugetlb.c:4153:16: note: array 'key' declared here
>         unsigned long key[2];
>                       ^
> mm/hugetlb.c:4159:40: note: place parentheses around the 'sizeof(u32)'
> expression to silence this warning
>         hash = jhash2((u32 *)&key, sizeof(key)/sizeof(u32), 0);
>                                               ^

Ok, will queue it up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFt1Bx32z8UiLJcl%40kroah.com.
