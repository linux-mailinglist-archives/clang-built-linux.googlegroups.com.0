Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBTHR5X5QKGQE6XYXRXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F082283FDE
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 21:49:32 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id p3sf4360602edu.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 12:49:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601927372; cv=pass;
        d=google.com; s=arc-20160816;
        b=rtct5MyNNSCRwAxja+PIPDzpP/4L70yzxDkYobc7IHZIgT3E+lfrgL5bw0z9IvP/HS
         N8sWTVHedKo0OmP9h+T+V6AK740dX6lYQRm79F58rWP1L6J3QhNL1WOg7Ig2Nxu8VNY0
         73JlD5JwbkJw/htkflc37jI3K0vGVxCJ9Qmza4zOKJ0HA/JQjN8MlMQAll4R7b8GdbIz
         Ms9qoXrieQXYTLCahsgYzaV6FT9Q1h2YIU/XsMt7IHtTpXv41hXj83UKyFdnxRmz8HUN
         XdHHPoUqKPvRibDV13d0U8cKpebvxlHiu6QIyjlnQqB2QNMrFHZ5UhxAjCCL7Y1kznnP
         0e1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1nOSxignVPuzUcXhyJ7Y+cbwTwb/LjDOSxrJrnm9JD4=;
        b=go1goNsGDMg2sNdu8avrLt1X5Z1E3hQ8bsFVQYstThwGGbNBVuYjoEYk8xQnJch9LV
         EZJE+GR+iBSXemXNffjCYj7VcP0Ax+iPlnwN8z0f2YzMDIMKz+IpiBrJgq3uqAxbYSGp
         hEYU+QrtY4vOT17S3TqPvkVaYnc3vsFlZZAAnuiuPvCaQVUnCjbSOe5OcA0jZvLfZ90j
         2pCA53Gm9uc4Ok9txBSqIP6CsxjUVMPqDbJuAcHRNjza5WF0jX2oPdpe3y4GDKA5r55C
         5P3YeZoRGHegwf+2DD5U8kw3qVDSi1L/+1z1V7lvZBX/saskQuDA99JesdL6OO4AM1mE
         RSUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1nOSxignVPuzUcXhyJ7Y+cbwTwb/LjDOSxrJrnm9JD4=;
        b=gz4YHJlrYGmhlJj9a7Fc8xOmrWhEyV6PkGi3TshVXvjjuyWkfGGUI2cNM+qDBdzJ7d
         Xv1aRSMHKDNtNID4qhxlpUU6LDIdLGYcnQ2JgH4bUr6JU7Cwby4jy2ziLYf6X9Ls8lYh
         rRW/ktB+PyGO1kBFKUK72faMiA8yx5+I9oPIT8iN1CeZsFKlOATgVCuVTukws2VzBEF8
         uCgEHbdQ/pmKFiOAmw+2NHRGlDaB3fo9arqlHz5SQHhAg7k4jUiEZnmlEjNkeqjbS4Os
         8HdBSeAqScLVtqsG1Va4LF/x+GGD9PTJPDunBj1+GmOFGg+pLM18c6FgM0wSEMER63VW
         LfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1nOSxignVPuzUcXhyJ7Y+cbwTwb/LjDOSxrJrnm9JD4=;
        b=P3PurObuUgbhU3M9pmzRJ6esu9UkPkk6E/mCA13s0F0p+3GLzBJcV1dSaRG1G1k9sA
         qyu0wg9LiNjKE2Qpp5Go+Tm+zjzKPJYmwrwOcQTghzIBt8awCNDOFrRCaY9IrtS32u5o
         ak+ajI+i7wpVM8Bj7Yfp8UlSyT01TyfAPbl9Ng74xxR++4GbhMkT6xTwekS7v6td8Jf1
         0NHHM0xwRWy1NXC7l5SO1wWIeIeC+2tFw2QdnlMK+ZMFVIqd1Gj+wo7VTJ6RZOoT2Tw5
         JhhtHl9Wv+DQOWVxYpBzaha2I83K8C9UGQYbg2o6EGQnXORVg+kPvvCZsGzUAMSJIVhb
         VJUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zTZW3SIErsA2x18dg5WHdLVNm/1s4rENwnzrEbZPNPLd9eWKZ
	7GHJabhupGRASLfmWo6qsZA=
X-Google-Smtp-Source: ABdhPJw+V1kYiN+OPLFU/QwoWLlx/rPdJ7H19VcMmpenB9s232ewi24gM+z1Mhg2IYDVz8BBabxmJg==
X-Received: by 2002:a17:906:c2d2:: with SMTP id ch18mr1469179ejb.79.1601927372399;
        Mon, 05 Oct 2020 12:49:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d3c:: with SMTP id dh28ls6544110edb.0.gmail; Mon,
 05 Oct 2020 12:49:31 -0700 (PDT)
X-Received: by 2002:aa7:c2d9:: with SMTP id m25mr1431687edp.226.1601927371434;
        Mon, 05 Oct 2020 12:49:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601927371; cv=none;
        d=google.com; s=arc-20160816;
        b=R/+K4ahshbzICBvvhsL0sfP27cCkWqhnFir99jxspOxcnOwyCN3qvqEora083Kp3wx
         FTjlx8kXr8icsGPm+KTsq0HQ/SuhkFG9AofNWD+jxKLQCEX7YHpInWTCQ3BKnVoWxN2k
         VASE6nfSRHQ+gyd3pAH1Cs344DmeUt6BDMXy17UxHDs5LMHkTxMNdCU8kIEbzd2w5LVt
         6MoHf5klsk3nqh6Q2h72CHitH0dnDdhf3++rnDlxgjyhhKZ/gZGOPfm2bHfxh05TTLSS
         OHUQMjTvWZI2ZAGZIAHeHF89xYv+HvsAYy7YM6Uu/LDcIwJE8xXFvMOZPPNLb1F2qocr
         fVog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=+kBm9o8pce34jrmGlbOUE+ja6JJlr7Md6Vk5hnuRIcs=;
        b=gwCbF8uRoTyp+LSHh8JiSZArP7XShpVvL9PfS2TRTXe9mJxhAsHg3pA3kpWBgatw/M
         jS0zwh8nDBJnwIYg1jXSwY84ppL/MZHrG9/U9pCtZVNCFugTRB2awfb6/Ed2vRzIv8qd
         dEgWP38RF104l7JRJ1T/+D3pXWCs7oGjGsJ49SbdYjNqWONyBaJA3fX6xM3rhrIF6dJA
         15pLXgNcIyf5lWzkcC0dYJlkQ/YhDNd2MeMTfVkjSIcaycD03ZV9v9LjFHmIvZhGpTnh
         c9NlyNJsW7UPIL6mIDLyfZJp44PI4Oa4rKFqWse9KehKhBgzv4sU/riHAI3A+phQG9Wm
         9KJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id dk15si30315edb.2.2020.10.05.12.49.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 12:49:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kPWTx-000GYT-76; Mon, 05 Oct 2020 21:49:13 +0200
Date: Mon, 5 Oct 2020 21:49:13 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
Message-ID: <20201005194913.GC56634@lunn.ch>
References: <20201001011232.4050282-1-andrew@lunn.ch>
 <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch>
 <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

> Sorry, to be more specific about my concern; I like the idea of
> exporting the W=* flags, then selectively applying them via
> subdir-ccflags-y.  I don't like the idea of supporting W=1 as defined
> at a precise point in time via multiple date specific symbols.  If
> someone adds something to W=1, then they should need to ensure subdirs
> build warning-free, so I don't think you need to "snapshot" W=1 based
> on what it looked like on 20200930.

Hi Nick

That then contradicts what Masahiro Yamada said to the first version i
posted:

https://www.spinics.net/lists/netdev/msg685284.html
> With this patch series applied, where should we add -Wfoo-bar?
> Adding it to W=1 would emit warnings under drivers/net/ since W=1 is
> now the default for the net subsystem.

The idea with the date stamps was to allow new warnings to be added to
W=1 without them immediately causing warnings on normal builds. You
are saying that whoever adds a new warning to W=1 needs to cleanup the
tree which is already W=1 clean? That might have the side effect that
no more warnings are added to W=1 :-(

   Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005194913.GC56634%40lunn.ch.
