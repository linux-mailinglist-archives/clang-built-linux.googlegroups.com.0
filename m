Return-Path: <clang-built-linux+bncBCU73AEHRQBBBYNC3T2AKGQEUBGLMKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FDE1AA90F
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 15:51:30 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id w10sf19209735iod.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 06:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586958689; cv=pass;
        d=google.com; s=arc-20160816;
        b=niLtAXYHIAPuVYWCPzDhNDIXoNEbGidrpI2u9Y1iFhYK1nxLYHCQC+lNDHfwTmZjZC
         nHgWRwyKEt832uSXii0uB7x55tf4769uGqlhmNV8jvyrETCC9BY1SHOhZZg2IgoDToyF
         a9XiGmTqa8eHU3rPhxV/rT31A5Zqzqc/srmkqOL46msaBP2PZfGonaf6E0W3i364Ux21
         F3DZThgef7Dn6QrRteIiwIIULtmXsqpe/ffEzbOF9NwqP263zZ9UWaIIyoZDGK+e+DDq
         Kj9H9jcoqh8fyhqqRoH2wP4qVneY+Ybs6UBd3QHkKJO4QnXBf8PTwdhzTy0oP+MYcBM4
         hcYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=VBFrdY0/MqOD+pjMDyEP+zFc+Sc4sXAj3/SLr4R9C8g=;
        b=rUcG7PZbucd+ioVhEjlrTcAQfFxIK6XD1G5wh3a/5qcOgamI2fKgCwC2pcVmlHjH1q
         /YoYu05t+9IPy40t1Ld28wJotc08XrQ1IFKdjI+/WSbaGshgGi3xjG42pw5o9A/Z/KhC
         uTNP3tJdTmp1yJssur0AHtpjaXZ6i7ZfCGi+KhZrqQT+m0v9oe1KuW/quhXzUxsFnH5g
         /UcdKxMpM8uRfoFU5GVcEqw3alLcFONoiYMY09C7WVL06IcssaKNELYMZ+ChItE08l/Y
         aJ8drygkpTTfiyKc1BPbPZeImazvGy7l3tA3EndRv7lgB0mlK//6erX2Aew+zKM4yn+r
         LWtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=ivh6=57=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=IVh6=57=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VBFrdY0/MqOD+pjMDyEP+zFc+Sc4sXAj3/SLr4R9C8g=;
        b=WG0ya3j8AUJFwF7LXbG7XyMOJcdGjQGPpo8mAbulQsR3RCbqUDVcEZYyM37nVWOOiI
         C8fL4C8N2I6JQJVTIC26CHXueXkw+IAf/OV0HxqdSD8z8OkIapNZdXmHqHg/RVZQqFGU
         iDPfo8jYX7oGe3rIjOblVzvGeUc2oqVE8GLTI3pq5qfQkKUPDj5idR/lYqP8IfSJWzgC
         fdHWoQ/lqyZfR89f9xOdfaUvsIJvlcu1oGoDyJTTVBZ++I8vwfFFSDOIoc2mdbl+4iOU
         L2/wNlsb39ITrB9ZhVN40v5Iua7+nNyfbx7cvz45Ydc8XfVqErfrkXJpZ8V1Ewntt3NB
         Fwlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VBFrdY0/MqOD+pjMDyEP+zFc+Sc4sXAj3/SLr4R9C8g=;
        b=L3pVKoB0bJwCqVPdIutB/d5ftfrSyDFLb0hPuiuQEqfUpBKBFKnMS/TRvGLC9XNzWk
         aIVqoMCIsOUjZ8idN2cT/Db15YjPnYu09fApFCHjj3UOStnKQqoCR4FY3clOR8nKddNd
         1lVM2iWdrKZ5N4hNHW8ovYnT6F++dCB/YAVKVUZ01BeZHbpbgtsxVi4mnhgumqu1qDTF
         k9iZYP3dse+v2fTzrWFiUgJIUefAAK/HfneI39Wh8TE8QwdCIj4vlZpia9V2ftmEf+oQ
         9XRhR5kxHaUYsOQQ/Ju7kJbhz0Fti7OELeP/kBN42E4y49cb/1GSsAANgUjVuQWaBTSz
         dcig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZnQWn0k7nB7JlL+D8ECJaUlFhAhzNSVqge029yRuBhgq2kfPFQ
	hQtDwwmArgLqpuKktsygRxE=
X-Google-Smtp-Source: APiQypLvSTQu/GbsYvwu61eeU3RgDTd/Pxf32c0axVi3HKL8GPeaSveN7O6btbP+oarw7rY13t7t4w==
X-Received: by 2002:a05:6638:ce:: with SMTP id w14mr25934226jao.5.1586958689845;
        Wed, 15 Apr 2020 06:51:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3d10:: with SMTP id k16ls809919ila.7.gmail; Wed, 15 Apr
 2020 06:51:29 -0700 (PDT)
X-Received: by 2002:a92:ce50:: with SMTP id a16mr5472972ilr.186.1586958689457;
        Wed, 15 Apr 2020 06:51:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586958689; cv=none;
        d=google.com; s=arc-20160816;
        b=T1zLShOdHyEoLIZ7KXOZBlrepiwxy80fRoZs2V/lYqT+Jz1L27qRBBgQlJpx2HQJEH
         BJdhebSBFhufIfxEK/VU5IIH4uKBjzzX9uuufGrSTRALvSEktmBeAvv1P+NVSeK1aTdX
         UT9CFGI9oGz3siMDQCSJthy1DK1p734TZQEB6OMFUuPnwVc+46iSfJizXjRP24rF6oNA
         APkAVUI7vldiUncWUiPnenO6Kg4lBRRmVMYo+J50Ea13POdR2qNrVChUGJHq2CBa8tUF
         L++L45TIbxOuerbEmts9w+2Y5mdLLx5ALiwHL0H83z4D+V8moIvJJ2zlCDFbu2IyBk1F
         fj1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=aiFctOQIRHBOlXIaNY3LpnBRRquFibj7+UXTP7l2LLE=;
        b=VJhXw+FXKdJWlZilKo+bXPT+szrTpzoIYPa4xWDwsFp/TadHvzxBq761rQROdaqgOY
         mZBEf9m6AicCTD+smma49ZRg5lQnIE/MoAz5PGoHW/jgzBJnOFcOXJXdWHPbGlyMwMyX
         44zyKvZr7ofOjFJ1p/oNig9oxGwLUDwkG1K822Vj3zd73XfuSlXIzxwA8c68qPJXCB19
         hkYvtQKg2Dd5EfOVV+5I687meMPVegP3esO8T57ufO54MMABGUzxsrfVjPj9TPWxk/Id
         ErpwLa5NqOmVM4MT8EwryLe+G26Dt6QMRlzDp5RNsZ71YhVWtTU79+UV4nO2pfRrbQXK
         EEnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=ivh6=57=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=IVh6=57=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k13si63381ioq.3.2020.04.15.06.51.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 06:51:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ivh6=57=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9AC942074F;
	Wed, 15 Apr 2020 13:51:27 +0000 (UTC)
Date: Wed, 15 Apr 2020 09:51:25 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ingo Molnar <mingo@kernel.org>, Karol Herbst <karolherbst@gmail.com>,
 Pekka Paalanen <ppaalanen@gmail.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 clang-built-linux@googlegroups.com, Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t
 variables
Message-ID: <20200415095125.5efc372e@gandalf.local.home>
In-Reply-To: <20200408205323.44490-1-natechancellor@gmail.com>
References: <20200408205323.44490-1-natechancellor@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=ivh6=57=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=IVh6=57=goodmis.org=rostedt@kernel.org"
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

On Wed,  8 Apr 2020 13:53:23 -0700
Nathan Chancellor <natechancellor@gmail.com> wrote:

> When building with Clang + -Wtautological-compare and
> CONFIG_CPUMASK_OFFSTACK unset:
> 
> arch/x86/mm/mmio-mod.c:375:6: warning: comparison of array 'downed_cpus'
> equal to a null pointer is always false [-Wtautological-pointer-compare]
>         if (downed_cpus == NULL &&
>             ^~~~~~~~~~~    ~~~~
> arch/x86/mm/mmio-mod.c:405:6: warning: comparison of array 'downed_cpus'
> equal to a null pointer is always false [-Wtautological-pointer-compare]
>         if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
>             ^~~~~~~~~~~    ~~~~
> 2 warnings generated.
> 
> Commit f7e30f01a9e2 ("cpumask: Add helper cpumask_available()") added
> cpumask_available to fix warnings of this nature. Use that here so that
> clang does not warn regardless of CONFIG_CPUMASK_OFFSTACK's value.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/982
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415095125.5efc372e%40gandalf.local.home.
