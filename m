Return-Path: <clang-built-linux+bncBDQ2R56ST4HRB2EHTOEQMGQE4L2UMXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C4F3F7E9A
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:27:53 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id v126-20020a254884000000b005991fd2f912sf1025839yba.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:27:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930472; cv=pass;
        d=google.com; s=arc-20160816;
        b=YwBKLcOqYpeBFJaBVLThIaA/ThKcVA7ukO99ZoCVb5kEkhupPVdHWIR7CF9E7fEM20
         xa8dL3Cxc9U7+NhNlyZV/PPQLLO3q5ayFhpRYnBXjj1OH6BvZIN3mF9IZej/f1QtOCa0
         nQHPbBA325MzQsG0OIMEy+jRjqTNJ0y44RuVy/+SRTO2PQmxHk9kTe2PE8npzdie6Oj3
         Dt+oGs/LukAFGYt8pWJ0rqztqiUKZkuDpFdlAu3E5wFj+/SKrDN2Zzl+UOiFqG2msNaq
         ZQCXXKyJRnZyYG6pavhk+ocif0/Kp5GZeRBeH1bR5FIQy0EZnLuiIW4weqQd+hNdQl4Y
         6PKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=/mxsgwdI1T9g9brjRtKlpikZbHzZqPsMXstu9MN6ucY=;
        b=i6BAU62cSJ5lm2ExvKh3VJPlaDEQtB+sK4w208kO0dcgnEEV2tpi6MJmlMUDwi4+b/
         V1ANOzCg7Y7KzfhTRmm1Zbaf4FgT8764cNulhDAmiiyn95vLaX85T99rPAful6PzssGv
         Io8qC1SaKMLiEkiznOGgZS0RHrJL3kHw5XNxNll0rp5fXlzzF8/vlufcXuS7Pt/UQzoQ
         N5sv6EDpSQRPYIIvddGo3XZA8SRVi5WoqvovL5j4Z4wlx2Hf+yW5ruSAE7fk+Yy3cQ48
         tV8aME7sTe2nxOorvx/LD708pMXuSnB3IfutX5XXx5bxi4IFldESl8KW27kp5j2nNaR+
         QxhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SUKEXGA8;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/mxsgwdI1T9g9brjRtKlpikZbHzZqPsMXstu9MN6ucY=;
        b=HBZNV69VmK+ZcBeDTkn0v2hi9qiGlS2fYH5Z1jr+4RyxfxGUQXJN54BMuGDzKiraPk
         miZakPySdTwNVYrnK5KJX9HM48qWOAGeZ/+ri6kay0NT2SmEDF/0KIPmKD8/QF/5J5mu
         7/FAQM3kEujNKlpG5BLDaZEa0MUG+i20U7PgPNWc8Q54Ca5z6NEX8ONjVzlvk27lnJ8f
         610MlPLt3H8RhOFOHxDUhNZayj9jkV6MHK1ZA7zZktb/6KROdszKpiwetdNSpUs96y3M
         XH0Izf62o59q1LsSVbBF4EgN66WM9K7ojj+PvUvKlzIVwUVZtFLtvH0fV1kZQhpY5ZAU
         DGkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/mxsgwdI1T9g9brjRtKlpikZbHzZqPsMXstu9MN6ucY=;
        b=NbVaquDlfmN1FDo7rO+2HnePuC7u/YDg6vWdCvl/Qn0+DVC3hMa0zVvrX8SvvOMVtn
         GExQ5NMFUs5NuHUcI0mZVzOxdWeAe3VJPTfUT6chnbMrVm9JalMvX2XLK7JFh/odXE9U
         bs+PyGT9c5Dy5JKDFkMqBQEX5C52Ixm1sPrQMy80mjBvJAK9mykB3MikZyIdxT8lkWMI
         h0m3sZSPYAomdIXDWG9N7mGK+ZK9uME2dcFMhLhaISnmvWjTEWJStSU4aCiGPUmm5yXq
         Bfnah8RgiGDfn4d8vfg4ENg//MIOAxOBM5wC25ecP1L+oEY/I5SjRH49QJfjJz5Dc2IE
         ZyOw==
X-Gm-Message-State: AOAM531/wacXExy4j4/PsWd8DC5gzDSO/FnmPJN/P1WEzTXHWUaRlu+o
	AU+g7Kx9aWOHFg5N6nlJung=
X-Google-Smtp-Source: ABdhPJyQT4WmAbLht+ZKwSrNUGDkQpbH2RJbz19lpFptAN3/eWCtxn7ECWwL1neS0Ep2CJNl9sHnLw==
X-Received: by 2002:a25:af81:: with SMTP id g1mr1271703ybh.457.1629930472576;
        Wed, 25 Aug 2021 15:27:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls2051913ybr.9.gmail; Wed, 25 Aug
 2021 15:27:52 -0700 (PDT)
X-Received: by 2002:a25:6192:: with SMTP id v140mr1247497ybb.305.1629930472065;
        Wed, 25 Aug 2021 15:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930472; cv=none;
        d=google.com; s=arc-20160816;
        b=qWaYScWwp/e0L358f2uZNY5GU4KclHBUNK+ESSyAROuN6ePqC2pBbEXBnbUpTdctt1
         5WQ4EaAiAW+JQz4/+jhIcKU4evGA4iBMjGdzZ8ZABRcieG/ZTXh5mIrGTITjlOMa5IwU
         tKdCtUHTz+uaGKgkxjMD5AFHJxF23jKO2CpVI1qTrfUGhXjzmSKElauV+A9R3BhbrQc0
         kJkR0g9s6oMGiVGTRJ9yvBaxPIQD7VCf/9BIEUu4/z2lLFFRzIr3ZLlVqsy3ej2Qr9+t
         bwapGNsMAhnnV1WQGJvT6xOksx39ow8JdCwJTxCdyibtbTQMtpjnhXwasAlhSQByidqC
         Bq0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=YQMQ3wMMz1CppTW8hHbihXL4EM3bns0Daqv2jXGZvL8=;
        b=uZnSS+t6QcJdhMtP+RaO6RxXKVFOCFpGFWqGOgL30m9ptZNBW8XtLmXTC7Yw1sYSSi
         +ADottD/h9U92KvohGX26tmU6YNEeoAhB6+o2uIJg2COgws0RYYURZ618cna0u8YGVv0
         Kx6QnOWKop2kLMZYfQilS0Wyja9J6kuas0hsxEE4eLJn+gh5CApmB70dtCCMkyu6szm3
         LlocS4Ia5s+Hk2guI4Iez1OoCEaQmE3rPGUhql2Jkwhipiae0AP8lhcHu8YuS+Imo3TV
         E6Zn2DAJW6ujczImm8TbL1a2O/tbY3AnEW6C4qUSGaHfRQ4MUcjEp5Ikmr+J0GvrFT8y
         G0uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SUKEXGA8;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id x7si52678ybf.3.2021.08.25.15.27.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id x140so2004514ybe.0
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:27:52 -0700 (PDT)
X-Received: by 2002:a25:9847:: with SMTP id k7mt1216472ybo.170.1629930471663;
 Wed, 25 Aug 2021 15:27:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210825222514.2107728-1-jiancai@google.com>
In-Reply-To: <20210825222514.2107728-1-jiancai@google.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:27:40 -0700
Message-ID: <CA+SOCLLyKaEmCSrSNUKfpgPmUxcu8RyZLqZxpmw87BiO=m84Mg@mail.gmail.com>
Subject: Re: [PATCH] coresight: syscfg: fix compiler warnings
Cc: mike.leach@linaro.org, dianders@chromium.org, mka@chromium.org, 
	Guenter Roeck <linux@roeck-us.net>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Leo Yan <leo.yan@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000c782c605ca69c23e"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SUKEXGA8;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b2b
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--000000000000c782c605ca69c23e
Content-Type: text/plain; charset="UTF-8"

Please ignore this patch. The title is incorrect, I've updated and resented
it at
https://lore.kernel.org/lkml/20210825222514.2107728-1-jiancai@google.com/.
Sorry for any inconvenience.

On Wed, Aug 25, 2021 at 3:25 PM Jian Cai <jiancai@google.com> wrote:

> This fixes warnings with -Wimplicit-function-declaration, e.g.
>
> ^[[1m/mnt/host/source/src/third_party/kernel/v5.4/drivers/hwtracing/coresight/coresight-syscfg.c:455:15:
> ^[[0m^[[0;1;31merror: ^[[0m^[[1mimplicit declaration of function 'kzalloc'
> [-Werror,-Wimplicit-function-declaration]^[[0m
>         csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev),
> GFP_KERNEL);
> ^[[0;1;32m                     ^
>
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>  drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-syscfg.c
> b/drivers/hwtracing/coresight/coresight-syscfg.c
> index fc0760f55c53..43054568430f 100644
> --- a/drivers/hwtracing/coresight/coresight-syscfg.c
> +++ b/drivers/hwtracing/coresight/coresight-syscfg.c
> @@ -5,6 +5,7 @@
>   */
>
>  #include <linux/platform_device.h>
> +#include <linux/slab.h>
>
>  #include "coresight-config.h"
>  #include "coresight-etm-perf.h"
> --
> 2.33.0.259.gc128427fd7-goog
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLyKaEmCSrSNUKfpgPmUxcu8RyZLqZxpmw87BiO%3Dm84Mg%40mail.gmail.com.

--000000000000c782c605ca69c23e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please ignore this patch. The title is incorrect, I&#39;ve=
 updated and resented it=C2=A0at=C2=A0<a href=3D"https://lore.kernel.org/lk=
ml/20210825222514.2107728-1-jiancai@google.com/">https://lore.kernel.org/lk=
ml/20210825222514.2107728-1-jiancai@google.com/</a>. Sorry for any inconven=
ience.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Aug 25, 2021 at 3:25 PM Jian Cai &lt;<a href=3D"mailto:jianca=
i@google.com">jiancai@google.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">This fixes warnings with -Wimplicit-functi=
on-declaration, e.g.<br>
<br>
^[[1m/mnt/host/source/src/third_party/kernel/v5.4/drivers/hwtracing/coresig=
ht/coresight-syscfg.c:455:15: ^[[0m^[[0;1;31merror: ^[[0m^[[1mimplicit decl=
aration of function &#39;kzalloc&#39; [-Werror,-Wimplicit-function-declarat=
ion]^[[0m<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 csdev_item =3D kzalloc(sizeof(struct cscfg_regi=
stered_csdev), GFP_KERNEL);<br>
^[[0;1;32m=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0^<br>
<br>
Signed-off-by: Jian Cai &lt;<a href=3D"mailto:jiancai@google.com" target=3D=
"_blank">jiancai@google.com</a>&gt;<br>
---<br>
=C2=A0drivers/hwtracing/coresight/coresight-syscfg.c | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/drivers/hwtracing/coresight/coresight-syscfg.c b/drivers/hwtra=
cing/coresight/coresight-syscfg.c<br>
index fc0760f55c53..43054568430f 100644<br>
--- a/drivers/hwtracing/coresight/coresight-syscfg.c<br>
+++ b/drivers/hwtracing/coresight/coresight-syscfg.c<br>
@@ -5,6 +5,7 @@<br>
=C2=A0 */<br>
<br>
=C2=A0#include &lt;linux/platform_device.h&gt;<br>
+#include &lt;linux/slab.h&gt;<br>
<br>
=C2=A0#include &quot;coresight-config.h&quot;<br>
=C2=A0#include &quot;coresight-etm-perf.h&quot;<br>
-- <br>
2.33.0.259.gc128427fd7-goog<br>
<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLLyKaEmCSrSNUKfpgPmUxcu8RyZLqZxpmw87Bi=
O%3Dm84Mg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLyKaEmCSrSNUKfpgPmUxcu=
8RyZLqZxpmw87BiO%3Dm84Mg%40mail.gmail.com</a>.<br />

--000000000000c782c605ca69c23e--
