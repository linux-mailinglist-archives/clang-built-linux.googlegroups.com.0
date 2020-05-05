Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBNUOY32QKGQEXY2WGJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3611C5B62
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:33:10 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id s12sf1216903wmj.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:33:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588692790; cv=pass;
        d=google.com; s=arc-20160816;
        b=iA0ELM6HBZIrk5GEdtD3lAFOUp16B1Btoqd1W/pvoUEIB/2YU4cyFsSieQFY3qUCO/
         tqucFcF7z/qYveG61EmPrBk7FPGrPaoijdUpf8UVkN/s9mi+xRlFrmSiZU4YLcrzBpz+
         qIA3GY5U0G40mVTeY3Zd1Z12xAZ6CS3s+TsMNmBQFr6faYP/FFVNo/IcYSNFvRGX8yFM
         eE5c3tyo5r2EwdBOACW7XMxNwg0aqwyYbUHPIvZ5INv2WoQo6LZhpyjq9Phlll3z9eHu
         bkTKlfnTCekwM87aZj5wv+a2tvdc54qzI328RsXMK8UTKA8QhfF0IM4IXXWWZEToxiER
         0/5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2ih/o3wUNwBHcpuXbhvVDnBHqBk2L0+lj3XG4A/jEFc=;
        b=ygjiLfRHl02cOwIGZ1z0X7EAMOsRucUMCA96T5ODW8QH7SVUdE5hXptcFOa+HljYlU
         o7bqOPUvO9CI02EZmLt9uoEU/t1xE0oPiGlhek2Ucyw20gCiljB/Md9aT3mNdBbtJNSW
         Ed0oniPYFgmmezG3prD//NLU6pEzGODGj6RKwvZCfyvxWeUUsQGSLd8e0vz+MWGfmUu+
         fY0VPBgGob5w38w74ubqcen3l4l1iQaU12GeBbcD9baqEOkfZIoi8QANRkbowTt6G4ZU
         UcFl84mok8R2P10IGDWSbBeINa3rP5x3QtafuGMQeeBgmsyi7X77kTiWNqkzgCaOAXxh
         IURg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ih/o3wUNwBHcpuXbhvVDnBHqBk2L0+lj3XG4A/jEFc=;
        b=j8rnYIj4vMYsVJGButi5xwaN0Pnjp3PccHCGXxVcEiekCCPX4OPCZ0Gy1/tvmObocz
         UCZEgD6Vo4Dtkg9n8OyIjAIocv1sb4EdV1D3kwoHWeP9heVD92CLZx9kBHX6vxZCvYxs
         ObChSh7zrG6Thmp42ZqyQdFigrKmzkjDwPXWYeeWWp+2wqaM1AlSHGtY7gTOv68BDlUw
         OsOUWEg+ngqBMid6RCkmosYv/ZcbahjolDbM8fCw9SdmfLGtV4kXk8sYLiQDaauW77Ly
         P14KvyjlRePOIN3QLChiN+xAd05qRp1ucIwR3aBCnfGql1WSAesZ12+AXv0jNpncU17i
         ErYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ih/o3wUNwBHcpuXbhvVDnBHqBk2L0+lj3XG4A/jEFc=;
        b=hvlhMr6Hg0NReNLFylekKOpvR79paOt8xYbM8pta9/roAPWH+66JyhFbsfPhQ3JkcI
         oGjbTfa2biK0x9mmWrxrqCuepa+GkM3zjgljJztq0xNahROM/O7rJNwgEnkI0zM6GQNV
         KpXZlCAq5IbeqbitJbbcgvUJPtwlHLC8rZxBTGhztuaxa3wMcMMnBRlYdDGHy7gzVHDJ
         d1b8iBB0Q/KoIl194blJT6EUkOFVX4WqLyxUn3GUD/0u7bx6f5V5CskKKQhHKN/Om1YR
         HA1mI5l9hoTZUHKv2PDprjOu2zSeDNg9xhHmNPU88lZWCZKaqGsta+FFVY83lXMPoCh1
         QFtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZfl2oucwinYJxDbV6Uyq+VH1L7naobk0I3cXLVTaIzAaDbMbbX
	nXprcUpSw5xy8tHNYKnfp70=
X-Google-Smtp-Source: APiQypKvmzTeDAEB6fLE1VGDcIY5cahFI34+6o8w7Hk6yD12Y4wX+GNGJUL05y90H0ZWQ5hVnQsZxA==
X-Received: by 2002:a05:600c:21d3:: with SMTP id x19mr4029808wmj.60.1588692790413;
        Tue, 05 May 2020 08:33:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:438c:: with SMTP id i12ls4566146wrq.6.gmail; Tue, 05 May
 2020 08:33:09 -0700 (PDT)
X-Received: by 2002:adf:f609:: with SMTP id t9mr4633196wrp.41.1588692789856;
        Tue, 05 May 2020 08:33:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588692789; cv=none;
        d=google.com; s=arc-20160816;
        b=dXY6ldij3OMlZmQiapMeJwAXNJLoJw6f5q5yK1sK8ICJzy5QVerVPkHJu2SROaI9kS
         hCfdNwL5Pctf41eSxkn/xUuI6i1VRyyzmHH5NFd574ZyH7KVoOqHGxHg23exzbZbUPWJ
         HxdqySwhbRvMtQ1VfDeHHA/vhpXaaFseHntQNwsNvsDnKYMyAzvc8lcDn0DseQvb3LMT
         Wxeigws6ob05NjoYvafkDip/LdKrP6h9aV5LXbDxcYD7lG6zRt93YN9n1sZknZmCJjhu
         OSl8T6Kk2tsy572mLIIfLkXqAuYIyh3ea5vTkD+OYJgoOT0cocfCZNjQfOUBrDNsGh6P
         GhYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=YFG9qf1MgeO+0FSub/Ergqlzdrr1myv3yjmOgAHEJZc=;
        b=ira+vkqeRxjkGR9IiiR6yFdeY+rsfZ7oFOvZm9Sj+X8sN520n/GZeTr0C0McvOKDyj
         37DB5uxwq8dch1ba1/y1iA6LsvUPK0ABbGqjFgoxV7cf4ts9/vIwY2pKU03enXVhvzaV
         X+QKJX8vnZ0BI78uJbS9IGEqyBjP5o2pkxtUjagSRjwmLO8ZXTeLDsTA6Kt/uDwoP1H7
         w5Q3E9jsFjKCXxEhb4KYdIi3GR1nH4Onm6wLL1jqtxM/UBf2NkNYWsRlP3iC7I8HCMTM
         QWaY10vprm5K2w/uG1esNLS923OqQ5EUkvQeS+/DT6EgAKOgeESHm+AMFlci1mx73pD7
         Sdnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id w8si148695wrn.2.2020.05.05.08.33.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:33:09 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-qv1-f45.google.com ([209.85.219.45]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MTzOe-1jfRV11aio-00R3SD for <clang-built-linux@googlegroups.com>; Tue, 05
 May 2020 17:33:09 +0200
Received: by mail-qv1-f45.google.com with SMTP id t7so1192355qvz.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:33:09 -0700 (PDT)
X-Received: by 2002:a0c:ea43:: with SMTP id u3mr3087685qvp.211.1588692788292;
 Tue, 05 May 2020 08:33:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200505135513.65265-1-arnd@arndb.de> <CAHp75VfmvXotH+NRt_YnNQW8O38Gas+ZfLH00jfhytM8w7ka3w@mail.gmail.com>
In-Reply-To: <CAHp75VfmvXotH+NRt_YnNQW8O38Gas+ZfLH00jfhytM8w7ka3w@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 17:32:52 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2pXZGbFvXpD5D4trGjxaie_NYi4hhUyYmKmv9A_HfRdA@mail.gmail.com>
Message-ID: <CAK8P3a2pXZGbFvXpD5D4trGjxaie_NYi4hhUyYmKmv9A_HfRdA@mail.gmail.com>
Subject: Re: [PATCH] bitops: avoid clang shift-count-overflow warnings
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Christian Brauner <christian.brauner@ubuntu.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:4OLBhLpqGyFb+/z+wYbJjb8hxRzaiFbL2weGgydPB8mpVmIqMuH
 9o8JQd+QHloA7EE2GS+EcahlOJ4kissQSCo+gyBUyLC0dQGhxsdpgtX1eIhDVm283rgivhm
 Qwry/J/Cfk+Ilth4Pnfrov5fRL7kOAp3asE9EX/3m53stheE9VHruD8z5VvwSowI8SGSXf+
 BKVyyjaNb6PIzpgi6NEDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P079+XhULBY=:VMe02YHxNWKfQ7NPqhNOky
 7y9QM8hLsSDzyt0kUxGsazU3NCbgPHl5DeudehysoWbcatdG6Zo0yvaa1+kLm2x6KOquiaALT
 ysOzsNizkuPHlSQHw1iadYePmcQP4H2sYUOAmHoQrXoldbczWpgLpO+xLd/8rdTsZvwyd1v/c
 dy7a5Mw8mrfQpZqSxlKXpys5+AC+a+rbJT+AidoVs8ZVluD4+fZheq0ifg1xyPZBu19yDTRZT
 /QuWjKTxReo38O+QAWaElmYUxUQz2ByE13lp9Fn5tNoK4ea0YpLGkxahkRSIbpZEHG8g7Ggds
 1axyjAAtKJtNPasy/PGcZZcLp7Zgbi6aZ2uWU530aKPRJQhstFysESRP30PJVKjzYBH11/tEm
 4PRTHNEJsyLpESzMXwdlTExtQFUvC5mEGy2rfQPHrBV8eZkHz9giziqw5yXZ0y2WdVosNiEf2
 SXcGbIRnDhqimVARqjF3+eAzYNVpad5uVRxEPdjKCMQs2LZLmAw/RPq3I8PA24e03zexBM2jS
 KVYBbEk8sSUIZKBVEYw41W0kouNs+zAIkAm2I8CnMQhLBmb1+Zun1WvtMBolp7uRq99PhF92Z
 IBhGaVWjtzYBFqmy5di6AJ5Bm50+NjXjpTpmnEVbJouy79xtFY5EXlmtgG+yB86Ahtmfrxfcl
 pXt4AlTTQTwbh94bb7sVFHJzvNrBY9U5PQ6x4d+1yWKfeyYQH9SCx3O6+mfrkm6aLCgAPyPJ4
 zFx0EgxvOG8NrO000v7iqeFrMG+TZcr6j8DVokh1vbgZb3ZEk0uB3dKzqdtZHvB8JOpSLjp/J
 TXhkrQWdUJkF7WERFUAUWEmgsprPFLhtQIUtNCKPXe6947PiQ8=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 5, 2020 at 4:08 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Tue, May 5, 2020 at 4:58 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > Clang normally does not warn about certain issues in inline functions when
> > it only happens in an eliminated code path. However if something else
> > goes wrong, it does tend to complain about the definition of hweight_long()
> > on 32-bit targets:
>
> Shouldn't it be fixed in CLang?
>
> > include/linux/bitops.h:75:41: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
> >         return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
> >                                                ^~~~~~~~~~~~
>
> sizeof(w) is compile-time constant. It can easily drop the second part
> without even looking at it.
>
> > Adding an explicit cast to __u64 avoids that warning and makes it easier
> > to read other output.
>
> Looks like papering over the real issue.

I'm not sure if there is anything to be done about it in clang, since it
always does syntactic analysis before dead-code elimination by design.

It is a bit odd though that it only prints the warning sometimes, but
I suspect this is also something that works as designed. Maybe someone
on the clang-built-linux list knows more about the background.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2pXZGbFvXpD5D4trGjxaie_NYi4hhUyYmKmv9A_HfRdA%40mail.gmail.com.
