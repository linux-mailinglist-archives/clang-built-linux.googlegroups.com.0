Return-Path: <clang-built-linux+bncBDOILZ6ZXABBB35GS37AKGQEDVGUVTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2472C944B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 01:50:58 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id l5sf197754wrn.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 16:50:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606783856; cv=pass;
        d=google.com; s=arc-20160816;
        b=Puh8obmpXnv8m4omBHHY3pmhw3lhFHGfT5nbhZZ0sfLuwR9EUD6+DYHOQI8c+1fJd0
         0+d3UGqI6kD1ChO3qVc/aNW+TcvjfOnIdfSDIgYxmp6rb+u/JasCo4vSUd9A4GXhgd9q
         4Mp2vglaDizpqdnkeC3N51k5RmYFLBK7uTDJgSeXdLMCw8kR3vrY/+5imIJlEycAdUNB
         o6/7aF/U5A7XvccB9UkXOFVcZFZMrKXX9+ozOSqhB5ygCycU5O0QMEwTEl3BrDaSB2cC
         PPOVrO2HGrFJGkqHNJW4VG9OjVoAFGynsVc9C2cGqQL/ilBoCXfTDK4BI/BG/j00syjx
         Z6Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=z16EW2+9v72SkCNd8DkdJGsmqyt8zzikt0O9k3nzKJg=;
        b=fhGLYI4G+ur8zDnvnyUSypQZm/57cOHiOZU43VnuouvFqgew/s2Iru8w9GpUBYpsEd
         YDyjFfcCBa101SR9sooYlaiu0DQRrIVTUujD85ap4wmm/grcfcaJ+9thfEYgekOdjhcd
         STQIatQUOyH8CD2wQINLTqPxr4JFDGJGbDXRJnJttTIERY/tgVTF7DYNXKnuevbDUJMA
         9Wh9r6gT+MuhRhgk5Dedv9yg05d/tRl6Q772/2PsaeB7wFx+8L6+xuYugyMZ/OjF0lAS
         emvTQSSJvOd0PL/6F73R95MGPTxzpEm6R4iihhaOjR917WYtCdrSuAuOfmtf7GcSQ+Z4
         n2Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lB69+LPU;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z16EW2+9v72SkCNd8DkdJGsmqyt8zzikt0O9k3nzKJg=;
        b=DRdu1vpGyGR3Lk8ZBoAkQdKFbesk1merZrmsHv/vbipB53C9XxWRYzIlyftERIrSKh
         ksvTKP+7AGGldgeHgVAzAa9xvDKEDoNP4pm6Ba6bhPROeAqSywLo+XChUQsY1CdIn/fO
         SIFfkSCeDrfnzhUdhaUDbs0TcjJ365uWMDC1FkpL0IbOd1FdrCbXHM7z4KIQUu2bHuGi
         buJGfPNTua3mtLYKFB2MtyCWNkE+l4NdYJXYSevTTaqG8BwnfKkLLVf61saYuhAG+dsg
         C89SeAWmaKH1xQ2vEBQZqOxbEoYbdrjgQcPlE7GjGBCdjq9f4o1bG3Lf/CP6N7FaGmiH
         l7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z16EW2+9v72SkCNd8DkdJGsmqyt8zzikt0O9k3nzKJg=;
        b=Bthi34UdsVWLaki+g2ltaxmVjqZAJ7O2y3HgU+iqbM+3rvAIZUKdr9Uxu/Syd03WHj
         fJL/QzrSNiSHc4pimqk0GSILQj9oj5NkSF1YJ325V0BtYogQ915REovjjrF4CKO/TWOz
         /7bxffBZzB1chGZX6Wi1eM7V+ZGF++cKy6hHjybH1frBMNIBK6syKFWLm7DKpNCLELtA
         lq34n45FV8kWNld+tbcUD5T0FK5tk9tXSg0Hc8Tz8iG04kd7Z7eN3jlVUf15PGRwwwDc
         ddxBqAiCKw9QKKzIhaOK2DTjfNzGhqOgngM0iN4YfUFQc0J/uPwPNXWFN7uk224f3t3q
         f1Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337etshtbApBMfXdf8zKeOFYFFYjBTSdfKlWj4lfdETQ1wmY1jp
	c2ksmkEMsenqr7X6cmea0Vk=
X-Google-Smtp-Source: ABdhPJwETY3UeQ0jjZ4qWoC8sCOJnXeYKQGjN8dBtNKYA/Aj8XqDbTRcfvzZYSrUkRklsaf7rnLJ/g==
X-Received: by 2002:adf:ee51:: with SMTP id w17mr203552wro.373.1606783856078;
        Mon, 30 Nov 2020 16:50:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aa87:: with SMTP id h7ls178569wrc.2.gmail; Mon, 30 Nov
 2020 16:50:55 -0800 (PST)
X-Received: by 2002:a5d:6089:: with SMTP id w9mr281457wrt.38.1606783855316;
        Mon, 30 Nov 2020 16:50:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606783855; cv=none;
        d=google.com; s=arc-20160816;
        b=TB1p9XcIfQwyBuuWpqmSW+SoW8+Nq3sso/vkU/5u74NuLYyoUN27Y+xaNH0VDQrEhh
         0uHqatsmFLv7+cBmaDU648O1EVVos3w6OmAxNsglZNGzxf8EiTpQVAnlw1NsrD9KJtp/
         xyesDYXR7ZU1i9hqkFdsv1jVZqF7epv5oYzmrQqcouMUX/JGAX0fyx52dF7QMXclyjU1
         KX2VjJrUOS3ZZwouwpAngYKPoaW8CYAiA+GckS9n6SuhhfGsP0fQpfx9Gw5LHJ4K6hDx
         U1e6jzA7IwvvwMj9lvVoWCmkeeP5iZsiIntM1hcYiDWfZU71esBwMELjWDqmKApFXCLE
         jIMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hTzreJVzLotSX8irlBhPZqAylN9milv6wwdHJbswZfM=;
        b=J9RzX6FLrpExxu6QjyNTwbw8jh26Z/yb1al/GL4zmlHJXLq+tqIqYe4DrWmH5XA58G
         FD7Znos65jUlbSq9iPNpw2gPkKECFNQADBZOEa/VvIGa5TrfCu+9Nc0wnKs9LSVukdd7
         UGtNi12ybFL91+LUr0jUou9+YFbd/U+hom1orMGvIQPol0JVcL3+20hyEHRInI2mh/5d
         vtAObbc1kjKCToOQSr4Ztmd9rQIXDC/3UgGuawIjGOjHKBwFJb6TixDkJ/xWivGfjAod
         +6b7FN1VgkpZGKSbwBShlVs2wESbobHhFf+HrRRlqT1LO+aLReA6qcniS4Ps5o3Kzi+d
         mhEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lB69+LPU;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id p3si3629wro.3.2020.11.30.16.50.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 16:50:55 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id s30so431070lfc.4
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 16:50:55 -0800 (PST)
X-Received: by 2002:a19:5015:: with SMTP id e21mr80952lfb.566.1606783854666;
 Mon, 30 Nov 2020 16:50:54 -0800 (PST)
MIME-Version: 1.0
References: <20201127083938.2666770-1-anders.roxell@linaro.org> <CAKwvOdkbPCaJO8c+Zj_BSwfkwcVuMQSFhnxj6PXGo5i86NQ_Zg@mail.gmail.com>
In-Reply-To: <CAKwvOdkbPCaJO8c+Zj_BSwfkwcVuMQSFhnxj6PXGo5i86NQ_Zg@mail.gmail.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 1 Dec 2020 01:50:43 +0100
Message-ID: <CADYN=9LRiz8ix9Rb_vMzQsCQs6YmR7CgoVkt8qEbcT=H_NFWHw@mail.gmail.com>
Subject: Re: [PATCH] mips: lib: uncached: fix uninitialized variable 'sp'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=lB69+LPU;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 30 Nov 2020 at 21:22, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Nov 27, 2020 at 12:39 AM Anders Roxell <anders.roxell@linaro.org> wrote:
> >
> > When building mips tinyconfig with clang the following warning show up:
> >
> > /tmp/arch/mips/lib/uncached.c:40:18: note: initialize the variable 'sp' to silence this warning
> >         register long sp __asm__("$sp");
> >                         ^
> >                          = 0
>
> Hi Anders

Hi Nick,

>, thank you for sending the patch. Do you have the full text
> of the warning; it looks like only the note was included?

oops, looks like I missed this:

/srv/src/kernel/next/arch/mips/lib/uncached.c:45:6: warning: variable
'sp' is uninitialized when used here [-Wuninitialized]
        if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
            ^~
/srv/src/kernel/next/arch/mips/lib/uncached.c:40:18: note: initialize
the variable 'sp' to silence this warning
        register long sp __asm__("$sp");
                        ^
                         = 0
1 warning generated.

Cheers,
Anders

>
> >
> > Rework to make an explicit inline move.
> >
> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> > ---
> >  arch/mips/lib/uncached.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/mips/lib/uncached.c b/arch/mips/lib/uncached.c
> > index 09d5deea747f..21a4b94a0558 100644
> > --- a/arch/mips/lib/uncached.c
> > +++ b/arch/mips/lib/uncached.c
> > @@ -37,10 +37,11 @@
> >   */
> >  unsigned long run_uncached(void *func)
> >  {
> > -       register long sp __asm__("$sp");
> >         register long ret __asm__("$2");
> >         long lfunc = (long)func, ufunc;
> >         long usp;
> > +       long sp;
> > +       asm ("move %0, $sp" : "=r" (sp));
> >
> >         if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
> >                 usp = CKSEG1ADDR(sp);
> > --
> > 2.29.2
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADYN%3D9LRiz8ix9Rb_vMzQsCQs6YmR7CgoVkt8qEbcT%3DH_NFWHw%40mail.gmail.com.
