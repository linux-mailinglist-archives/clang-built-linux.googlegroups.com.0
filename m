Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQVU6D4QKGQEXJ2QZLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 92268248DC2
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 20:13:23 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id l22sf12830093pjt.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 11:13:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597774402; cv=pass;
        d=google.com; s=arc-20160816;
        b=yCOHgs8bSk2d0sU2H5IuFOpyAo6vHocwHSQl8Xdz5cRCMlzfzFPz6cExSmAMLOHvOd
         J5H94PLCmm75UnPOv8nuogymlyyshYWlhzDWxvo5M7p5xNDWtzvuJKeNtI4xo4jAek1O
         3rhGn5/OxvDxkesk6xdhXCO4fYI0WQqfzcDhVLAeRCEvy/wPkSVosOw4eC7XvtUiGddp
         VYz49maZrk4/ThQ3UCSdM5gY98IGFYbSa42ZDArkVbhXS8fpn5VGHkG7TyfZ21Crw5bY
         jErdwkyrI6aKSYMvQzNCLRzRcJ0cHpT6wLBcpUlSYNXDvCfQsxBT45gtK/zMUPKdhb8G
         UMxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oXFd1MaiIWdrWxtVPr4vTexa0Yg1CuIdyXdxkEt1rAI=;
        b=moP18b4bMVa+LqfTYM3T2Jlwx1RbK36I8NikouWAbVg0PDeC0RpH9wFG65E/tLMvzW
         1LDHcdKtqq6kU87+RjgCyrjMAx30g4l8IrZe/RkWIu1s8euXxjJrP1sZxH33ls2YIJUg
         +OEF9PBJ7uv0fjuTw7uZbrV16/M++4aIkhb95OXJk4swgbEEYYPlhQv0N1JI1K0itVkM
         HefBKXCcf5I92K4SxWOxh/ioshY+T46oPylvLPYZeosuE3vpjt2nE1sxvhPpiG+yEyqP
         eyKKddryj7cEOjbsxUkwy8rxhji1daXKoiTFuVtmAfIfNWZ/6L4rCzzWlzpgD5wVLdgJ
         t2Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U8MxrtiM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXFd1MaiIWdrWxtVPr4vTexa0Yg1CuIdyXdxkEt1rAI=;
        b=TLFI+n9UdgoMbQ8bXKxkAaMCGaYb6jfjJyI65xEFfFCBsCXMRb2VClRjHs9kLZIv6X
         khkQ6krkANMu4luWSBcp/fb4rbYU0grfF0hqx+gusZQo3IT8uULbB+b0rVwhRJ+1lHvb
         HRv0m+oH0jon4/dRQ5SE1UdFgdyqlEeawL4uwELqxOGY1F+F5X04Dt6JBARPFUHofMQI
         llPrF00E/Xf80O1G4Gkb4H7dPFGx9/wjR5xjAiP/cOE10owT48LWgmGhRGl5bmQarU9Y
         AGawzZgtdXvO2MROqsCabFSqCRbqDbiLVEbJYTLp5xDnGAOIldzIrrqyxrWuAc5KhbLB
         y8QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXFd1MaiIWdrWxtVPr4vTexa0Yg1CuIdyXdxkEt1rAI=;
        b=UOZLyF98kxPkR0t/vw+feOGAVbtlYuk3vSQBNMVhxiZr3kt+cLEKGJqCcNjlnfYWzB
         iYtVi8EwOHquadny1kinc21eQAYfzTrY749Nq9Xs5uYbqIfjtDUMVnT4I3jlNz6zdjaO
         UxZjh3oVh5jE/V2HrTdS0nxjpO8DMOCDdx/jJESnaqMCXkTqEK2Z6KTQ2X1TwPjCF0I2
         QXV7Llxr6afTkdBXKZNrFj0KC+pdIhV8yfZDU4B7anHMlDNClCLa6n2oA9gIDLfv4Dfx
         SPpDCkMZknsqglhexOtpEAJX4k81qTWAwLwYZYyLSGQEdPz6sZh9BwcAlmOt2aBqDy4v
         MZjw==
X-Gm-Message-State: AOAM532vsnp2tW6OpEsyrRF5K19XRCMZ/C/1oLzxHUbkjbSUpBsLJGOe
	87hAMXbGo/JkP5GBkDHVEyI=
X-Google-Smtp-Source: ABdhPJxTDcBegcuwYpYykEvQoL49qmZ6Qh6pYPvjnZ/hMZpIg+UM4KTHbgI07Y8jRnsBcp61FamHyA==
X-Received: by 2002:a63:5825:: with SMTP id m37mr14452103pgb.257.1597774402259;
        Tue, 18 Aug 2020 11:13:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3367:: with SMTP id m94ls336856pjb.1.canary-gmail;
 Tue, 18 Aug 2020 11:13:21 -0700 (PDT)
X-Received: by 2002:a17:90a:e60d:: with SMTP id j13mr961887pjy.216.1597774401755;
        Tue, 18 Aug 2020 11:13:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597774401; cv=none;
        d=google.com; s=arc-20160816;
        b=xBMfg72+yt17uWeswgGNG0CvtEVTJLRCHoEwVK6efR0Fr7hmRkOyZIKQbqPirIkG5V
         cERZCw4xH4lBQSlqil012M3EHgx6Y0aKXmlGwD72Kd4oCHg3z/cklI3QV9oKQjuoR+gQ
         0XGpP6bNA0zjA8KxErqvScriTARiUnG14eQBevqNOtMpsUx5MVv8xQVs1PDo39qGu9HI
         T/nGl1GqBi6N4n284euhR5AY0kEP0Te4h1LFuJZIKpGXhHSBTlx9lkLv2KlR0+qdFFDx
         tnIjelfAugLbPQaViIej0Lqp5aNQo9aPl6StTK5ilqvv6e0QfCKOcyUVhiSf83kr/9ju
         xxGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OPoLhWCuLlQUnGgkEzwWtnOhSRQmEhC1TsY+WB80aKc=;
        b=jqrmhcnvg/kAWQx8Uht80xndsV+gZ+3ZT+BB9l08GIozLBsm1Nbu+MVOKxopW5snOJ
         Vccq5x60TEKwmeanwmp/mZ5RLiBxnWVqyOqNfnSrwYucK+Jex6zkMX4gfigeovdoIrel
         3K3ttGs7TINkSqjn+tvsbnHvGSUUzE1ar1ejqJ1ypBQsgUYv0vossvSkKskBdX+iJHlm
         04VeFYxohKpbq/Gy1TIUlyiRxbrHZDCzWeQk+DdpskbxYXHdCQ/12DfGXDuZN19Kn33p
         Kil0W1PHsRTptJ3/b0RpoZ1R22WQbuxZ+hP1TgiBCTPYIxesJ7ff1tvBW+dXIrDmzQkp
         i5Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U8MxrtiM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q18si989714pls.2.2020.08.18.11.13.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 11:13:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id m34so10113830pgl.11
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 11:13:21 -0700 (PDT)
X-Received: by 2002:a05:6a00:14d0:: with SMTP id w16mr15947397pfu.39.1597774401186;
 Tue, 18 Aug 2020 11:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200818170337.805624-1-alex.dewar90@gmail.com>
In-Reply-To: <20200818170337.805624-1-alex.dewar90@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Aug 2020 11:13:10 -0700
Message-ID: <CAKwvOdk2fynn=-FGUniYLG+hCOkEFppRnAaTYe8DW=YRrT-siQ@mail.gmail.com>
Subject: Re: [PATCH] sched/cputime: Mark function as __maybe_unused
To: Alex Dewar <alex.dewar90@gmail.com>
Cc: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Dietmar Eggemann <dietmar.eggemann@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=U8MxrtiM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Aug 18, 2020 at 10:04 AM Alex Dewar <alex.dewar90@gmail.com> wrote:
>
> Depending on config options, account_other_time() may not be called
> anywhere. Add __maybe_unused flag to fix clang warning.

Just curious, would moving this definition to be within an existing
preprocessor guard for a particular config also fix the issue? If so,
prefer that. If not, __maybe_unused is the way to go.

>
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> ---
>  kernel/sched/cputime.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/sched/cputime.c b/kernel/sched/cputime.c
> index 5a55d2300452..43ede0d6661c 100644
> --- a/kernel/sched/cputime.c
> +++ b/kernel/sched/cputime.c
> @@ -252,7 +252,7 @@ static __always_inline u64 steal_account_process_time(u64 maxtime)
>  /*
>   * Account how much elapsed time was spent in steal, irq, or softirq time.
>   */
> -static inline u64 account_other_time(u64 max)
> +static inline u64 __maybe_unused account_other_time(u64 max)
>  {
>         u64 accounted;
>
> --
> 2.28.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818170337.805624-1-alex.dewar90%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk2fynn%3D-FGUniYLG%2BhCOkEFppRnAaTYe8DW%3DYRrT-siQ%40mail.gmail.com.
