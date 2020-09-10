Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXOC5H5AKGQEPEM7GZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 206FB264B21
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 19:24:47 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id a3sf1571384oti.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 10:24:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599758686; cv=pass;
        d=google.com; s=arc-20160816;
        b=OfYnXPrn6MYQYkwxgg8cXCz9IYbxi6Pf7frA0GeeKBsaONB6UaPubJHIclq1LOu2Tr
         HpMEnUgXAviwH2AEUg1g+4R5ATHJ6T5f00O37Ooic2Oi4ZdPwc2EhDfba7K44QUWrNDd
         bwqj9D4qlrXUnuf+awT4rOfWVpVqCSiSEYLWPzi96knFbygkFrCB3nDy1WtnDoTVTuQq
         FtqStc9BYBPD5qmGW59mZH2YKQQ1nHiFXvQATS8343tasDmyRFH8Oz5e2rNiORpOtAh0
         6+AWZspWcL6RLvw7O+W/sXOahG78I4aO6wzxF5Lqm4vDwPm+TrRTL8yibZGzVWYQt8xA
         M2Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=r+LKiHAkTbyHdSz7y0M5hGbrsn5JM/PgsDVxRPSL038=;
        b=oR2+/FSAXCeqRXpIp1nL7SRpyOvgZV+i2nr3Z/uDOhBYMhE/hrkywCaEJHZ51uprFH
         CzdUy7Ck7JEXjikxZTHYx92ESHetJC4aZOHBbjawUFyyrtkfvvwSMc4XP7SrAwS5mumB
         qaZ20QtuyVSFnEr6jayPVdM07+DtiJmCKTtRtn5X+VV2CiYAEfwiQPmzPWqzpFJIzCUl
         2o9ayPd8zjUDOEyNoIc+SY/LayfxNbCn4t5sREamyqOG/RinPqgRBl2F/APOSTwtVFcQ
         Bs+YVKqBavlTsSkKwpy++TKC8ETZUXDSYEnM+w1TEPI5NpKIqp9/niamRn05zwpyjC9H
         PcAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qMZpuCyY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r+LKiHAkTbyHdSz7y0M5hGbrsn5JM/PgsDVxRPSL038=;
        b=N/Gj3JjRCxswG6Q/ZFt/P6qxtsyisTKqYRR2anm2jVFE03A/gExPz9M4U0dQutCKR+
         +bodyRUKHD839lQ4tPqczbn4PHuaqbFxmSccniN1RC524IzTxJAm88af/P8LVsfpn3Wd
         Ll3GPDdgBaxTaH20QixQ61KJsDUp0Kj6qRq3SmhQHlHdr3MPdPDLENNmo0PeR/T1B57M
         ln/exO2eBcsU6NcjX7OOMCqj7aNla/v9mIzf0MNjW+FQXoEzRMeeLD5T8lE9OmTbq72I
         h4z06s9XQtE/IMc4/GO8pyd3+ZhyN10fqI0Nw7vz1FP8HYPpCLcB5PTuMvG8M4N67U74
         9TtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r+LKiHAkTbyHdSz7y0M5hGbrsn5JM/PgsDVxRPSL038=;
        b=m/VneB0SHSTUQz6RN8LnWxho+leHXVpGXngQ0U4dDvMGw3M+EnzuabDAKVh+9nbHdL
         cpd4521eTSmskCpb4Mv81SS9dbsu0nTgJnoElPp/6+de+EBWzgLyqd0lhLfn5Tj5bIlI
         XlDP87DvDvFR+aOec40ztsbx+98ODhOxWgxaF6nHIl9jNakA/Y8BH+6IOLGkAmozivbQ
         bREKR3pLkNMzPIG5WC1nzMsZqTXU9okkrGjLLcw56a3nTmBu+SOCezSzVMq58jJY+AIC
         e1z3U8QUHaodrfRZSbCw0Vv4nZV8h0Hva68Q4DzB3dSUEjpGIQY3wLLfDaaG2cuGOyT6
         DGxA==
X-Gm-Message-State: AOAM530AjoqnQgcJTbgt2lDwIygxQeHoss47N2DsEMH7zFM92+es+V5B
	kYhdNUwYbqTHuz8Velu9I1o=
X-Google-Smtp-Source: ABdhPJxdKNFpTaSt/0bdLoTEqAxphAS4xWGvygM2qQ1MPhT5sTOlF6b/UOa27VYTjJGTu1JUo58oTg==
X-Received: by 2002:a9d:3da1:: with SMTP id l30mr4819526otc.233.1599758685998;
        Thu, 10 Sep 2020 10:24:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:312:: with SMTP id l18ls423815ooe.3.gmail; Thu, 10
 Sep 2020 10:24:45 -0700 (PDT)
X-Received: by 2002:a4a:d306:: with SMTP id g6mr5243952oos.25.1599758685540;
        Thu, 10 Sep 2020 10:24:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599758685; cv=none;
        d=google.com; s=arc-20160816;
        b=MMu3Pd6oRNVs3losb7bdvqFIHoKYz8/fnRJUH2lYJWeb7PVjou1Jd0rRB2Y0H76y+J
         91pkXjfhlFQUjggMIIT3wKCCRqJHqoH8LX8HakWr4cKWW6LKUpDOd2fcpwK441ewG/LP
         e9VPaA38nQ2B2Mr4awDNIRvHrlygfNhi8H3xtuf7zTlLvuCBPb7lWl112dOXiOJjuTrK
         JtQ/7wujwtOZIozj1i63pq9+NrO94Mpc58FFH3b9xiH9y8RSSzdgNP7+sLNicvJ7tvZW
         My8m3o0PYfWvU2oTKW7s2ADvaEIL6GndEEdHP9MWa2x8RdB7aVNu3w14Lq+NmOOq56be
         /y8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g/DxpxIJfXdy7C8opyI8o+XkWeSXniE6Oz2qu6dzaF4=;
        b=pDDWvHfjnBs4kPLAkLZC/VNWnj4PcOb3kezJ5IgKMXfyZbcV2wbtxgnu7dkP7hUTYw
         KbIYnFTN9xDXe0w330OWu6mk5YKbnCAsKvwknXyb1HdUae4hOK8ws7i+/y2JdRBlU4In
         YlpswM1w70z6TLoUFnFSBKfZ6i04RSx6vA5mpSDWCZCLgfIPeYR0n3nyhnaUsbAzA+yY
         LJKw/ci8wduc+0mA05/K5kPbwA2aVIM8SAtIzJz1rjFDolnRPuTyNY4Zpw02iZDIHVC2
         i9h69gFruJPmBbO66H1x9uaqtB1qnfpENN0tBQJWNSviHNW4HyNd8PTexiQIJQgDqwTY
         uckw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qMZpuCyY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k7si454814oif.3.2020.09.10.10.24.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 10:24:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id g29so4614090pgl.2
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 10:24:45 -0700 (PDT)
X-Received: by 2002:a62:8349:: with SMTP id h70mr6667701pfe.47.1599758684979;
 Thu, 10 Sep 2020 10:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200908221638.2782778-1-masahiroy@kernel.org>
In-Reply-To: <20200908221638.2782778-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Sep 2020 10:24:33 -0700
Message-ID: <CAKwvOdnP7UmpRPL8XjzoMPjgQb9Di8OXk9UEX8NWaa35A01Q3Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] kconfig: qconf: use delete[] instead of delete to
 free array (again)
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qMZpuCyY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Sep 8, 2020 at 3:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Commit c9b09a9249e6 ("kconfig: qconf: use delete[] instead of delete
> to free array") fixed two lines, but there is one more.
> (cppcheck does not report it for some reason...)
>
> This was detected by Clang.
>
> "make HOSTCXX=clang++ xconfig" reports the following:
>
> scripts/kconfig/qconf.cc:1279:2: warning: 'delete' applied to a pointer that was allocated with 'new[]'; did you mean 'delete[]'? [-Wmismatched-new-delete]
>         delete data;
>         ^
>               []
> scripts/kconfig/qconf.cc:1239:15: note: allocated with 'new[]' here
>         char *data = new char[count + 1];
>                      ^
>
> Fixes: c4f7398bee9c ("kconfig: qconf: make debug links work again")
> Fixes: c9b09a9249e6 ("kconfig: qconf: use delete[] instead of delete to free array")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
>  scripts/kconfig/qconf.cc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
> index 8638785328a7..c7216b9110fc 100644
> --- a/scripts/kconfig/qconf.cc
> +++ b/scripts/kconfig/qconf.cc
> @@ -1276,7 +1276,7 @@ void ConfigInfoView::clicked(const QUrl &url)
>         }
>
>         free(result);
> -       delete data;
> +       delete[] data;
>  }
>
>  void ConfigInfoView::contextMenuEvent(QContextMenuEvent *event)
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnP7UmpRPL8XjzoMPjgQb9Di8OXk9UEX8NWaa35A01Q3Q%40mail.gmail.com.
