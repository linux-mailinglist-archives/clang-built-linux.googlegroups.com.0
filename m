Return-Path: <clang-built-linux+bncBC3ZR65BSMBBB34VQXWAKGQEPWXLF5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8B3B5759
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 23:06:57 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id x9sf7645462ior.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 14:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568754416; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xax+GfJ6Rk630S5ZPbwf6hlMtRL3eXJEatFbMjMUmdZn4LzQDSQOocM4NxqsUPTsM6
         EyKn9uLd9tVfd9nlz4NSejoQ0fLUM/fo6BvRgTF0G2R60ugTnNtIG7sD66quZMLfpbI+
         inVNr+dC4aukOwdAELVPW/WAi6UsYVh0BOmg7tfk5sCQizW/AoBol2eEY6MNUfhmJYig
         R00PFoNRtirbO+7y1e3gBXSTH6qmmC+lj/B3SHTh3sv+kGSueKj8L885Ty7+Y2j+zLwi
         FqqkR0zCdKv43tC8OtKyyZNfgK3eOwXcCfH6F+XM5/OU6RVOacFKDjLzGbzlTS6Rm7IC
         +qzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=PX7htkd4+sjJ5pLH/N6RNLtXLxm2KuVc9Lp2cb84NdM=;
        b=a7Jl19DJjBzqW479eFxWS8TDRkBvRM/JeYHGRdoT0UkufXM/7tsx9yERghvNSiJ5om
         uRlT67Hq29A+5+YZURKmeZtypo54xTYCanp3rYESkz7dcd7hSC0IhbPtJ3Ll+/88Gj4O
         ARZFfh8vslmrX+yq/thwpRCszkQrITw/k9Kv8YAxI8xO/TUOESAOw2r/P0GQT7UKr+N8
         amxKGiwK/vC/9msrBDkRhTAvZGoJMP0BtXkQr/QKPbUaAqhJQMl1d69LEXUFqQqy6RCy
         ClQa0p5ildXR3PWJmX3kwsWLBi/AREdePf21zfxIO6u5GE8i3MV1zs6Y4w0fgerBHcrn
         tQZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b="D6Gt/2a6";
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PX7htkd4+sjJ5pLH/N6RNLtXLxm2KuVc9Lp2cb84NdM=;
        b=gQGuNBuCa/d5Ymo+37pTk6Ad/fdeQAPTyHSWkauhkdHJF8tvD7QoWQx9XlIXw2dmOT
         Y9i7zCqKxlk+IN8GbSkg9/rCLqrieIc3a+vOxwf+n+8XnKG4JgoYMDlBrHC6VDeJEkCX
         Ov1g/0SK5pqw71FjfFguG6dvgdQc8anFg586m0k4OqpgmteHSEuJkvpghFmnDjQR1LgH
         HWjPQ7qTXfbcrWS3wHFkjOMIuP1uI6PATQ/a0FnElsn9FzsidKFBfsNKyvf/N/N93ySN
         P3J+h4SbeYHRpZSTvzaAVxr+BOl9/BGNwNtt2IZG91DpDSLO7V3m1AR6efubMi0QEQyy
         ocqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PX7htkd4+sjJ5pLH/N6RNLtXLxm2KuVc9Lp2cb84NdM=;
        b=WpK5cWIsDwJdcsnJQGAv3kzT/ZS2B2nUiCjIiiNQOyEec1nfZye7kejgMcz64Vwn/p
         hshh2y5iSOoV+SWTmIcNswdnXzFHN/5iYmF38sYXNsqhWAKkcyp+N/DJ24NYTDSRwhFI
         7x/Ih4GiHm4AQwwPlI8eIdO/wIwT3lcgTNp/gpvf/JCTNFet5n9+CGJl6S1p38oPAVPw
         yaKo1OdYi62mGWIh2nAvNFSQ4ZuvQ5fNtje5zsJmltUlSCvmnFMdi2FDwqwOX4+ldI8F
         SnCL155EslTVNoWkJTMeQl2r/NT5oyoBYa7mO+PY2jdUDKnsoHmPnnJQrRRPnPqz4fTN
         WyWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbtW8PbWferYeRYFUmGOQEfi4M1ZEq2QT1upIKN7Dtt8BLGdUa
	yonw2bH6T+xVzKC3XQi/97c=
X-Google-Smtp-Source: APXvYqxIuHYefej2tBML0dCTfiQrvnoQ7lU8wyqOR42Lk2q2R37EuGhli4dAkVzRCTjaImSI8S9YAg==
X-Received: by 2002:a5e:990f:: with SMTP id t15mr998535ioj.270.1568754415990;
        Tue, 17 Sep 2019 14:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:938e:: with SMTP id c14ls1250626iol.10.gmail; Tue, 17
 Sep 2019 14:06:55 -0700 (PDT)
X-Received: by 2002:a5d:9a86:: with SMTP id c6mr1019833iom.118.1568754415726;
        Tue, 17 Sep 2019 14:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568754415; cv=none;
        d=google.com; s=arc-20160816;
        b=a/5kmgsT0ToEbMq/q61yRQQ+krhYRZLxzIH6xRKUeuRYYcXlw/vJsmrO5mX81+6Wll
         Yos8Nvk2jvxC/ie/a5VtXs9bQVON7ZauF7tNPcN+CGY6n2mjsgvlZWj/RaSSN+Fs3pBT
         gQwTgV6pKU9WvWItbMWT/MK1jipjVaixIzvP+ycioOis11ydeUGa1fW6OzH9ZU+Z2FZ2
         HG3epYDjue+LlhIwIKiQpwXCWyIRNhIRo2qhtuXgvM+xahTLp5N4B3Pn+4Idlw3huO7w
         qz1OwFYct4u2aXObrTGPBErPrrNmeT8WqvzZrv1eK9+nsoMx23IZYv4DOsr21S1KaP2U
         aX2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DSHRnDjgTxLe+YR6luYam5tlh7HeP3ajnJpu1J2/rgs=;
        b=mx1zAD8MZBwZy/BNZhq2EfotK9Luxgc2Y95bl3nn2IGnlcmf0zbnMzuwDuByNEvD81
         Am2uTJ1gIdBx+8p8p91bvFvNfPnzoadMV5eGsn8trJhhf+sKnMq4tE1e1KYS5arYiyx4
         fOKpePUJGXyNA17TDS3DcaPL7pojmL4npjBwjdNWi4LYtqSGb+xgTmpYr6sVtbU8qQs7
         efZa+4KK9CGiXp6VwU7duRiIxfCckSVl4BKN+aNyQ1NbK3rGTkYRuY9Mzt2WP4QEA0iz
         soFNNAF3TKjyWSVVUdC8hRDVzoxRGT+RfSTI3IZnhZsHH3+yGTsOQGCwRF01dU2CiFMm
         g/JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b="D6Gt/2a6";
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id q207si340775iod.5.2019.09.17.14.06.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 14:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.kravetz@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8HL3tkM027491;
	Tue, 17 Sep 2019 21:06:53 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 2v0r5ph4fn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 17 Sep 2019 21:06:52 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8HL3okW176167;
	Tue, 17 Sep 2019 21:06:52 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3030.oracle.com with ESMTP id 2v2tmtbjk4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 17 Sep 2019 21:06:52 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8HL6pPh027850;
	Tue, 17 Sep 2019 21:06:51 GMT
Received: from [192.168.1.222] (/71.63.128.209)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 17 Sep 2019 14:06:51 -0700
Subject: Re: -Wsizeof-array-div in mm/hugetlb.c
To: Nathan Chancellor <natechancellor@gmail.com>,
        Davidlohr Bueso <dave@stgolabs.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        David Bolvansky <david.bolvansky@gmail.com>, linux-mm@kvack.org,
        clang-built-linux@googlegroups.com
References: <20190917073444.GA14505@archlinux-threadripper>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <fc341ec3-65c7-ee49-eb03-9b069a8170b2@oracle.com>
Date: Tue, 17 Sep 2019 14:06:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190917073444.GA14505@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9383 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909170195
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9383 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909170195
X-Original-Sender: mike.kravetz@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b="D6Gt/2a6";
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 9/17/19 12:34 AM, Nathan Chancellor wrote:
> Hi all,
> 
> Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,
> that tries to warn when sizeof(X) / sizeof(Y) does not compute the
> number of elements in an array X (i.e., sizeof(Y) is wrong). See that
> commit for more details:
> 
> https://github.com/llvm/llvm-project/commit/3240ad4ced0d3223149b72a4fc2a4d9b67589427
> 
> There is a warning in mm/hugetlb.c in hugetlb_fault_mutex_hash:
> 
> mm/hugetlb.c:4055:40: warning: expression does not compute the number of
> elements in this array; element type is 'unsigned long', not 'u32' (aka
> 'unsigned int') [-Wsizeof-array-div]
>         hash = jhash2((u32 *)&key, sizeof(key)/sizeof(u32), 0);
>                                           ~~~ ^
> mm/hugetlb.c:4049:16: note: array 'key' declared here
>         unsigned long key[2];
>                       ^
> 1 warning generated.
> 
> Should this warning be silenced? What is the reasoning behind having key
> be an array of unsigned longs but representing it as an array of u32s?

Well, the second argument to jhash2 is "the number of u32's in the key".
This is the reason for the sizeof(key)/sizeof(u32) calculation.  It certainly
is not trying to calculate the number of elements in the array as suggested by
the warning.

> Would it be better to avoid the cast and have it just be an array of
> u32s directly?

I did not write this code, but it is much easier to do the assignments (below)
to build the key if the array is unsigned long as opposed to u32.

struct address_space *mapping;
pgoff_t idx;
unsigned long key[2];

        key[0] = (unsigned long) mapping;
        key[1] = idx;

> u32s directly? I am not familiar with this code so I may be naive for
> asking such questions but we'd like to get these warnings cleaned up so
> that this warning can be useful down the road.

I suppose it would be possible to change 'key' to be something else besides
an array (such as struct or union) to eliminate the warning.  But, I would
prefer to have some type of directive to indicate the code is ok as is.  It
is not trying to calculate the number of elements in the array as suspected
by the clang diagnostic.

-- 
Mike Kravetz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fc341ec3-65c7-ee49-eb03-9b069a8170b2%40oracle.com.
