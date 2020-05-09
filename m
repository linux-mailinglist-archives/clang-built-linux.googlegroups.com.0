Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBEWG3H2QKGQE6JDLOSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAE71CBEA2
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 10:00:18 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id b7sf1544018edf.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 May 2020 01:00:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589011218; cv=pass;
        d=google.com; s=arc-20160816;
        b=YiNdX/vqbuctUDABwSSUTq7elNpPviAIOmw0Viq1HH9uWi+eGDuifHRq7phSJvYPEr
         vwGwtA8dykX5xq/8L3b/4u5DCnfejdB2jtLvBh8mtCy0CsXj6gMcQl355f4jjX3809WK
         fRNRlbG8HxvNY+zAlWI1POAZmBd6PhPb6DutHJe6dmuLY/scXBijTb8t67lyeaL+OQp+
         P9PnxcTdNuFpUt6HtgYbdXL2EbVRPnCMt/DxDQloQrtUx+AtVMb+wpZ4DGGTGiG9fSBk
         pWCt/bSAX0b7q6SGH2ZUuGKoFcKR5XaZd7VAFKCPl9y/EEjc7LEZQow58snQzOO+NWMb
         K+5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VQsJrClL+Y2RgES2yARx6jHWfiHDa0FykLFfUiPXxuU=;
        b=q6D9EA44Uin7QuH5HYR6+vrhaZSVmxLMblbT1q78pNbRi66jLnVY103qFUYOLH45lt
         qIszorH0pt9cT3eVjHUHpNeLiQeMQrrvMuZOrAxyA3kKDhefykO8eDl59z08FIhti2BI
         Qw+W1htfCo4zheEWjaSeatoFbFtIf57q7i06v4jHmXee1nqnlNR43Aq6R2dpkbrXA+/T
         2n/HWSqlCNvWhFIsVAj0OxdCkBmpPHXVKsxhZ0MUmhVF9KbGd1ylRdWyZZuDtfBJZaOS
         a26wNms3nyJhbthRVov9YFT68fNBUSG0vflDXiO4oOQT2f/Z0d119uNjVVFSlAwGbvBn
         pq5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQsJrClL+Y2RgES2yARx6jHWfiHDa0FykLFfUiPXxuU=;
        b=HB4EIZsToWxVD81HeQuUQmVt2V3L9FeOEuOa9bYyfTjb53zjqh8dXVg7vI8uUSnjvL
         dOjCbvrDpLZG7GHb1aLHGaBoII2F0XPci+FV9XhZF8N5/xis1dKfEwpuwIO9/8AA0jqa
         Yb++6+YSd5fjDRnLpSxWkEF57KZBa8WPl1Hhd6AyPUHV6BBfqs+dvd+6+d3Em6PejY3c
         glDKmiRg8bAV/h0nOeud7ET4wdrR+OCGaBqQTPwdFAs9KeZ9WdET2y5BwmbDsnOk2VIh
         rrmPoQtJxXbqtyCZ4pvjf94qN8Nsjw+eI0xz3zNZPLJgRjXI6SnvhVe+D8eKb6tTpfug
         EhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQsJrClL+Y2RgES2yARx6jHWfiHDa0FykLFfUiPXxuU=;
        b=fM8ESlotR2sbdbPtSPSPxlbCoFZJUKs5EbZKrN7cB1IQU0Omp6Q63pfoiOxYOIShRq
         vrV9OSEMvB0KXbsvwV3x3yFjqpMFvfnjeCvit1mzbvkqmTyLqN3PiFCD7kXLh8kSoEKB
         nomRnMv7+IMg74BMHcPCNjtDEZ9hxrnPkaKhlNAPjQ4d1V2lrd26zegk+zN3W8iujzAR
         rTkLYbURAkXSyQbCi3czw2dOLZ/G4v8DvgYALkQg+jYV0/7lH75YLHipEbFn8LulpFaB
         kPJMV0ko61NfS+ep0jMl0eAIvdac9LL8K4ZEDdm+QdWy+E6MmybCYer5tyOG05qgCgR4
         gdWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYIZD0nNwWVw+PfYUCdIEdK7PRTd4PYOHsvZ6wSB03nO7bkwzEO
	YPcaYCno+4wxA0TEpFuM7JE=
X-Google-Smtp-Source: APiQypJ66yzrrM5nQzSgxGR/cRDLTfUpXJ2Fyja+sCb2GjVx1BB4XDmD62kAY0JtkdIfEHxZjJweEw==
X-Received: by 2002:a17:906:7d7:: with SMTP id m23mr4976286ejc.154.1589011218257;
        Sat, 09 May 2020 01:00:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:ca0c:: with SMTP id y12ls1621632eds.7.gmail; Sat, 09 May
 2020 01:00:17 -0700 (PDT)
X-Received: by 2002:a05:6402:2293:: with SMTP id cw19mr5295028edb.351.1589011217736;
        Sat, 09 May 2020 01:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589011217; cv=none;
        d=google.com; s=arc-20160816;
        b=hRdggKDbweFMzgl8RQgJlJHm+excjEn/RBITIgd41UYao6f8MCRx++k4hgJSU8SQpn
         ow7e3BJvs3XEAxCK1GgPfKxMx2bf8+jH2kxfCQ/QCAEtCra0kgus2gSAj4JbadmiBclE
         3W7VRksow2IdinCOcSooWYW0Bp1fxoqK+jIOD2ku72dqKL/1Vc+DAZ4KsraVULHocyNE
         llpBh9aR8HAS2815vaLxos2dpKqG4MmXLsw54xYr1MOnMHW85jr1EYeSuy2wk34VORRQ
         dX1AyUDx29mwl2/L+68rvdwnv60BbswxXjWCtXrfWH9fB2uzMPY+KALL7yvXTKr0D1wR
         Cthw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=PhVgevAt6mpitggXS9c/fwcobj1XH70kq9F6ooWytDg=;
        b=ettBk6rHSjvb2P/3ltgZJQ+GX+VzBB3L3u4uk0cX2AxD5DWwrDLOHHV+WgoQ/g8/sI
         C2LLJUBwHsKrV/oACt3I9japyNDH178iqwF8fvQaEPcKCxuDnVK0SeNs6oydEGNyZpw2
         xJLYhsmwzx0jHu/wcDa9nGoJ1xaiV8aH53VBClgaF9xfIleqiGVuDXCVRDfiSCsYkN+3
         pbzYfNwbfSGmZ7ub4E3Hi8Euzk0oCSKGy6jTHJ7tJgyqUCx66zZVsBCn+B0PoRXSLDrc
         u0uMhKbERW6xD2PMjfPiUytJa590ZglhXYLBF4hQJ0lYQVF+513qpmBmPHR8V8v1e0xB
         3bdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id r26si178436edb.5.2020.05.09.01.00.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 May 2020 01:00:17 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MQ67s-1jkTZJ0lhg-00M43Z for <clang-built-linux@googlegroups.com>; Sat, 09
 May 2020 10:00:17 +0200
Received: by mail-qk1-f176.google.com with SMTP id s9so3430512qkm.6
        for <clang-built-linux@googlegroups.com>; Sat, 09 May 2020 01:00:17 -0700 (PDT)
X-Received: by 2002:a37:4e08:: with SMTP id c8mr6448672qkb.286.1589011216094;
 Sat, 09 May 2020 01:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200507042835.9135-3-bvanassche@acm.org> <202005080353.y49Uwj18%lkp@intel.com>
 <CAKwvOdnuXX2xpsz6fxV-qfvj1AqN3V7qyOwtwtCG4NWq+HzfAw@mail.gmail.com>
 <86bcf088-a35d-0a0f-0ba4-5883b1f2d6cb@acm.org> <CAK8P3a3PA25WUJp73Yea9xq_ca3uXA9Vz2U=UmHiDhg8FmGiNw@mail.gmail.com>
 <040756ba-81ea-64e4-6a11-85608b871b88@acm.org>
In-Reply-To: <040756ba-81ea-64e4-6a11-85608b871b88@acm.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 9 May 2020 09:59:59 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1+jtP9NRj-UCaDHjGSJiqDA4Y=0YTMfvr7zWS+OKRTUw@mail.gmail.com>
Message-ID: <CAK8P3a1+jtP9NRj-UCaDHjGSJiqDA4Y=0YTMfvr7zWS+OKRTUw@mail.gmail.com>
Subject: Re: [PATCH v5 02/11] qla2xxx: Suppress two recently introduced
 compiler warnings
To: Bart Van Assche <bvanassche@acm.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kbuild test robot <lkp@intel.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, 
	"James E . J . Bottomley" <jejb@linux.vnet.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-scsi <linux-scsi@vger.kernel.org>, Daniel Wagner <dwagner@suse.de>, 
	Himanshu Madhani <himanshu.madhani@oracle.com>, Hannes Reinecke <hare@suse.de>, 
	Rajan Shanmugavelu <rajan.shanmugavelu@oracle.com>, Joe Jin <joe.jin@oracle.com>, 
	Nilesh Javali <njavali@marvell.com>, Quinn Tran <qutran@marvell.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:iNZ/jprjgufMjx93oHjadctzRQv3oEmaojDO8UHNuuKpDYDFn7z
 gBocr9EJkltAzRlob59AdfoyQ76SMkwuS0BBadIGCrtG4XI9qjSWJw2O/P41heoG3Rw7rhp
 iSHVivR5ZsJTD+mR0AK9/6g984foznA1TIdRf8zzC/c/GF3h8dp0ng1iejnqJv1IhwKl1up
 4r1PqUZWkKgQlQrv52NKg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z7X3egZtvFk=:plgI9ziNvqb6kQFvEI7olq
 XYSIALeaV1enzqHBB40PgpXZCotF3Rp6qFpmRSqjM+czpuYgf0UhxyhDtPRSw9TsxparN18ks
 5qNo1p/1YYRbtVXG/CvjpU4GHKkoXgV0AopLbzbwipxS0nEb1UvTtIm3KMm/GKmnbeititEKx
 kCzULos3QtUzG3BkF3wLV+2j3fVSLwhi45Ab/dWUu6SmPCRC+AC2HQZ2hXJWl+EjJz9L8WKiw
 zodvBhg1PR19YkYkUIjuqAiitdoeVzdbKUhb3VmpfR8K1ablsBbQ40+i2EHyq2b9pmiH3A4tr
 +Ijsdb71WoYa5QHe3ciBlXM2NYXWTJrIw4WlG2q/Fnb55WMoyQFyw6fXOJqfZ1zaetJ/bbx0O
 nafEJ6vlKtQoP9Uk1a6LGHssU33RluM+zY3tAM8fsYLFskKpmeHia2omp83OafiV5UBjxb0R6
 D/RSJdp1v40YomH0PcHCfg8EsaCxax0lihMIjLrk5QaX63TrWK4VZJIyYpUOzOsiNmIvjQnc2
 BSvutwVCUCGLPtQ2hbX5vExkmetbXFBeEpTQNgEOn7WD9pJiTjkVD6HkyOeZhC3J6FXfGJwa3
 DBm+91BJAg9m3vhBDknLatiUoEYDDypKjjKSPR0tT12Jvb0N1LQ3ESRdTTdFB4u6nYCji6B1/
 0VK6EwhbYoln25vC5dgGYxko/NFl98VUFV79oriUasRlGqW6jDzUevupbepRkqQ9qMOTSuPcE
 HYWLxfZjNbbZXZ2fN/aaPjTI3BKO+xm9PEi7dMecNVGMO7c/xG3kCWrUsZNagD7ZVpBe62omt
 2wyT0wOC2IwlOuFyfTdRchipaVnk38Hgb4gHYRmLZMEBNbrf3s=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
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

On Sat, May 9, 2020 at 12:29 AM Bart Van Assche <bvanassche@acm.org> wrote:
>
> >> Thanks for the feedback. I will have a look at _Pragma() and see what
> >> the best way is to suppress this warning.
> >
> > The __diag_ignore() macro in linux/compiler.h should work for this.
>
> Thanks Arnd, that's good to know. Is using __diag_ignore() mandatory in
> this case? The following construct seems to work fine with both gcc and
> clang:
>
>  #define QLA_MSG_MAX 256
>
> +#pragma GCC diagnostic push
> +#ifndef __clang__
> +#pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
> +#endif
> +
>  DECLARE_EVENT_CLASS(qla_log_event,
>         TP_PROTO(const char *buf,
>                 struct va_format *vaf),
> @@ -27,6 +32,8 @@ DECLARE_EVENT_CLASS(qla_log_event,
>         TP_printk("%s %s", __get_str(buf), __get_str(msg))
>  );
>
> +#pragma GCC diagnostic pop
> +
>  DEFINE_EVENT(qla_log_event, ql_dbg_log,
>         TP_PROTO(const char *buf, struct va_format *vaf),
>         TP_ARGS(buf, vaf)

__diag_push(), __diag_ignore(), and __diag_pop() are just
shortcuts for open-coded #pragma plus #ifdef, they do
exactly the same thing here. I think it would be best to be
consistent and use the macros, but it works either way.

I actually have patches to introduce yet another syntax as part
of a larger rework, but that is still WiP.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1%2BjtP9NRj-UCaDHjGSJiqDA4Y%3D0YTMfvr7zWS%2BOKRTUw%40mail.gmail.com.
