Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6PRUTXQKGQE7ORU6GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C7B11455B
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Dec 2019 18:06:03 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id s85sf2994657ild.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Dec 2019 09:06:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575565562; cv=pass;
        d=google.com; s=arc-20160816;
        b=iw8JKZArKH9evg8dq1/UPgw9mD2lXQ/J1ZKtVVN9STvHvBm9Tvwp1QVAch/IpKGeIE
         FE1aOhpuFTS1rYBDAnzzEoGXaSrutP2X8pGxC0DpBDV2aSI+UfrWOXrDBfUyEP4IczAM
         yqt4sf/5qypGO8BjINB4Srmf6c/bzFKnFAPLQ6o65FaQVmBUGWKaaOIIjZybl8upuS+U
         3UQhM/BmXlZFzi7dHtLc0nWRUTlX3WcsqmUhnmzPqzNMw8oXs7W9/cCq66IhTEPk4uh3
         nQLKOIhkqiuDRxDXcVAksznkhY0cTAJdm536thz0RFJonGQ0T+ZYCRlKzRWbrpxLHMrx
         MQXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k7FACLGS5+yiAvftoU9mfHRMliDN78wNARvxPdDp2zM=;
        b=g0zUiV4lMoYQ61iQ1/AA54hSCiacWiHV41EK6kUCxqiqMJzeoQaMBDewq/XSMRjI1M
         JcW90sxDkd6YHOyvHLLnTq+3Dnj+B1A+ryfz5YNPwMSJY0JVk9w7TfbbxWQGR4MEpYSv
         2alEeej85vZtE1pSkuIHoP+6XmjEpxmZyYCiMKZ+bmZ8MUxfhdGTEbMYPr79pi8RwuEn
         Rzim9Twcm6OcQCl5Z8FLRfxBoU1FfGwPQsLiNOErlDJbPPuh4UiqGz9GbhNjWy/N70Pq
         C38kkk5I2/UcbcZhmHk7IWEwrtG83rVDMSveHflSRY8tI3t/5lEkk3zs8ME7VrMUd375
         j8MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XIr5Vi59;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k7FACLGS5+yiAvftoU9mfHRMliDN78wNARvxPdDp2zM=;
        b=TPgCHlvZK6TFednQpT4/QZeQAhY+QAc8N7ji5l//Qhc4WizSl68DcvqXiZxNIy3rUr
         Xl1z299txwS9ZZ4981FCWYZBczpy45cXnxJ8LbnHHyNe7PWjROcAXRRZwWijpjt+laLr
         ajA6xEpCzHn7fL16kdy5wYqomVC1JGV9IcXrA+porhHaaAeAPbWxEKxS//KzyIRLki86
         ta9nBZdNmOcik1mzSyAwAb6gaIUqE0aakv8v18lSr9J599w9q5UejnqixASJIAesiubs
         /QhbCRqPd9qsRuVQjj3NuzbcfsHBfPfsQTRJBtyw8LVx9azi4wvnMXEvf5ddVicohRen
         iRhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k7FACLGS5+yiAvftoU9mfHRMliDN78wNARvxPdDp2zM=;
        b=ki9rzQGz/Ovoi3Qc7n7n3en7KInKfNd4yAbYKTXZuBpZO3Bh6+01thNLPEWEPUeAt7
         ThfgUv3IJTict/2rtj77xCvRcRipbJt0wpOvOlgat9JqNfPgOGs00JKuejVi+Ddn0dZF
         84YSDoHDxj6ymWpk3s0curzJ6B3ZccTtDSZfWvrdzrTs59D/awersrMDWunryODvLj+K
         66ktkus/GPNvFCI4XXTrPf0XfTvXSlKz2vGCUrSlVT4oV7iGYoHQ6TLOX5trl3rINI12
         1eC+ZiaxKo1IdC3l5OdHWu4kshxHPxXq2kIH96u66xrR5S2UCkwEi1UxSVRTlWkII1KM
         Suiw==
X-Gm-Message-State: APjAAAX/cJpXtJdRFtGc4cQsfsnEPNaIf1G5c4GJ3ihdffjF8/0olXqI
	b9TFHrFTBMLpIfJP3w7/VDU=
X-Google-Smtp-Source: APXvYqxi6oyVCSeBJsCF3VhtfyJU5cfRxknDz3bGj8AfwibTsovZVW1ZH9eJXTxTlrCaYngGoG7MWA==
X-Received: by 2002:a02:6d2b:: with SMTP id m43mr9364521jac.37.1575565562153;
        Thu, 05 Dec 2019 09:06:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:212:: with SMTP id e18ls320372jaq.0.gmail; Thu, 05
 Dec 2019 09:06:01 -0800 (PST)
X-Received: by 2002:a05:6638:762:: with SMTP id y2mr6771966jad.78.1575565561675;
        Thu, 05 Dec 2019 09:06:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575565561; cv=none;
        d=google.com; s=arc-20160816;
        b=JlUi/3dMGQew7T5xSks8xULFMvjXOzT4eC7WmwrUn1XKHQyZ4hJJfz5v0wsa7/ldaZ
         2CboyynCaPaUV8ScQerp0MsUHgOOYOMzvnCe9sp+M4Q8cjL9QATA5cp4pKxHom7nRUEO
         Np1BwcMEzPIxj/l3QtvFW38sd5VV+g//y7P8cs1Y/1i7MOzWzpXov3Ubs0GOwnAiPaYP
         4XWh64g+O4CC00PQNXFsXrIk0nCbWKoEcNSK7QxvRWjRH1B9HIFaLX7ylwpc8dB9utiM
         Lh48GRFcz94hZ1Gi1yxpBcop4FV4s/vC26cNKEi+Qd2mY5VLfIJCw/LB/lFxqZoqyypK
         mP3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=h7wk4CqairQhNFXqEdRCw6JNGivGRG705siCYwDLW6U=;
        b=Dw7sJuXQXjlDUFfbntaOcGjUH/K5+3pRZR0SrNYyFZXlSQNKgBeOvm7MihlC4skf3K
         nJCHLiYkm0DY7CnFwmAmJLKf1bQWGa9pzjwbP+u2bh2bK7tfwcX7YtYA9/yntCf09K02
         1UZgug7CuSjdJ5GAEk52phpqO2VZ6ZvTxMwOOreWSTIfIz1tTjh83LlgHrJEhinvcROS
         TbG3Cw1BxuGOZoqBTzaDfNETOJFLoI/9DglhmmxIoxLv+OViqpIhGv7QbDe6mMoFI6QQ
         G/UBY+BGiQCnJg6chaoF05iwxhqrfHZ5NLU+g5fJuSWVt+c9/0wCUnlly0wmo31TbZKx
         EJJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XIr5Vi59;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id z20si250219ill.5.2019.12.05.09.06.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2019 09:06:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id h13so1505195plr.1
        for <clang-built-linux@googlegroups.com>; Thu, 05 Dec 2019 09:06:01 -0800 (PST)
X-Received: by 2002:a17:902:8ec8:: with SMTP id x8mr9539020plo.119.1575565560673;
 Thu, 05 Dec 2019 09:06:00 -0800 (PST)
MIME-Version: 1.0
References: <20191204225446.202981-1-dima@golovin.in> <CAKwvOdm-bhuJMRRN3tyNdb88+_TFd4m3b-7gX0-91VG4djzp+Q@mail.gmail.com>
 <23883331575506134@vla1-3991b5027d7d.qloud-c.yandex.net> <CAK7LNASQ_QGgm1Ec7R4yy6_qPj440V6Dg=DuuduEvqaqvBHBXg@mail.gmail.com>
In-Reply-To: <CAK7LNASQ_QGgm1Ec7R4yy6_qPj440V6Dg=DuuduEvqaqvBHBXg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Dec 2019 09:05:49 -0800
Message-ID: <CAKwvOdkAvz41OMZ_JDTVdSGby8PGis0edzbztta8-8d_Z0QVhA@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: kbuild: allow readelf executable to be specified
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Dmitry Golovin <dima@golovin.in>, Michal Marek <michal.lkml@markovi.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Bruce Ashfield <bruce.ashfield@gmail.com>, 
	Ross Philipson <ross.philipson@oracle.com>, Ross Burton <ross.burton@intel.com>, 
	Chao Fan <fanc.fnst@cn.fujitsu.com>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"tony.luck@intel.com" <tony.luck@intel.com>, "fenghua.yu@intel.com" <fenghua.yu@intel.com>, 
	"linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XIr5Vi59;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Thu, Dec 5, 2019 at 8:25 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
>
>
> On Thu, Dec 5, 2019 at 9:41 AM Dmitry Golovin <dima@golovin.in> wrote:
>>
>> 05.12.2019, 01:18, "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>:
>> >
>> > Grepping the kernel sources for `READELF`, it looks like
>> > arch/ia64/Makefile makes the same mistake. Would you mind fixing both
>> > cases in the same patch (v2)? I'm also curious about it's use in
>> > arch/ia64/scripts/unwcheck.py, and scripts/faddr2line. +ia64
>> > maintainers and list.
>> >
>> > I think if you simply remove the assignment on line 17 of
>> > arch/ia64/Makefile you should be fine.
>>
>> Perhaps something should be done to NM on line 16 of this file as well. Also
>> found similar invocation of `objcopy` in arch/riscv/kernel/vdso/Makefile.
>> I think IA64 and RISC-V changes should be made as separate commits.
>>
>> -- Dmitry
>
>
>
> I am fine with either way.
> I can take this patch, and also a one for IA64.

Whichever, as long as we don't have to wait for the base patch to land
via kbuild tree, then submit arch specific ones to their respective
trees months later.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
>
>
> You can send a patch for arch/riscv/kernel/vdso/Makefile
> to the riscv maintainer since it has no patch dependency.
>
>
> --
> Best Regards
> Masahiro Yamada



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkAvz41OMZ_JDTVdSGby8PGis0edzbztta8-8d_Z0QVhA%40mail.gmail.com.
