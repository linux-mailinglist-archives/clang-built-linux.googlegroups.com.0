Return-Path: <clang-built-linux+bncBCKPFB7SXUERBUPMST6AKGQE25UAJQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D60528C818
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 07:08:35 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id 1sf5117812pgd.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 22:08:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602565714; cv=pass;
        d=google.com; s=arc-20160816;
        b=GJJUdosK6Aev2Jr/ztwPrMm4jdjTOLU1dNNhnlnLmJN3JxeXxz+LrKi8giQe7cRi7r
         r7EHm4UsgwHFTBX/5sSpa1znmvJUPBZsFXMWpsiGoTDWGJpyZ8uHuT6MLQCht8qRlsnN
         3nvMQ0Kj82ie3O7fd4HhwcoSnGnpn5tbOiyeWm8y3Z1urOdEdN4phgvZmMTrRfX0ctlg
         q4ZhSgPLKFIeBZsPHkQDiJmq3yc9nOkqVnK9unhXFPvWLcott34dEegaGONrOkGS6HoG
         aazB/BtyZg6Bqe/DgJEXCfZktpAs/4ECYE4UD6y1J0qHep3wm0DrREueuW6aVdSV5dNz
         ok1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TXL67pPtgxDA4yUvwva9wZbo/L3JMZRRXw+wjLXEM0Q=;
        b=AnbIEHfg8pP5iw6oGH+EOlY7XvIKuFh+Tq7AtGdaMk3FYxHCbRgm8IzvmVq/84FqgG
         k3OGCGcq3NtnvMkF3L76Z55WOUnhOBd+Eh+wn1y5YdMWjLPnNLdspFyQiU+D9K1QrVUO
         LVY7VcT1ym/srd8GygGeD36x31KiSeCNbGYj7mtsnWDVq/zzQzZkEIkFP+9ySeeLGD2H
         QTfryz8Ln6rTr0H9W5T4EJR65IdZBpQ3EwE/1aFqhn1lkCpj85Idd8+W+3/FbohwQRY7
         Gz/tt+172sSK6+HF57PeGIBQOHnOsHiAV/7IH+TvhpZtXlF7Hp6HczMUHrVk7ik5rn00
         iHIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U9hShzmt;
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TXL67pPtgxDA4yUvwva9wZbo/L3JMZRRXw+wjLXEM0Q=;
        b=Yk4dEdeeeiF+hQ8QaEB0rjT21RkOZ00UVVq6qe0H52YfPCVO8Mvmdk3fnR8jqqyGfh
         xij9D6vtdD8UaXWsj00HaL2gmMomDjPUQFIoxBlRy412yA+MifR55VvkkhMdfQVNf4IL
         vy4XAMC4XSmSV5KIaromw88JOz+zJj5kIkAEkVBUXH02CW08ngugXu86tGjG0YTtt0tP
         bAiCHcbKarULrP8gB6Nlp4e/peAm4ccsiRvhqxLdWMcP2ZRLt5BQ05qrgvcA2oUIhFhQ
         oVWAod5/ykmtP0boz8XBcE0STdiK1CuIcWpqgN3K+xkJhgOHrkvvCfo0BjcGxqU+nGm5
         ebqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TXL67pPtgxDA4yUvwva9wZbo/L3JMZRRXw+wjLXEM0Q=;
        b=suUEKzIeYZ7+QRZ7NJKPdTW0SCBRva9VIAstBUYc2Y7WIIFEOXbtj2a337vs8I9sZJ
         Pxv9sShq8K1/NjhoSuOczJnhm8jtqiz7Y75hczLglQrR6I/Lp41aaPYVvKrvsWveQefq
         HtP6S2+mrw3ceGpq6dlGSRApSSVm8qisLcyRwYmcHqw+wkaFiJEfbAZATCVe3mPC+Wr2
         68qJXXtK561qiDQUs+C8+hFMWGTFNngowgCg3H7zAsp4pAe6cdfBZ+pSNVn/kjbHwuiP
         CNcvIBoX6/6Uo+cnGjlrmP7pHH1aDKxbF1dOtT9flzfSaORd8/qquXBiuYQFbzmts8lJ
         Yzdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Uj5D3z9+mo5X5k6t/odDkNCOK+ZkFxDgf9c7hyiciviSkz/h7
	I/YrgRKPrQF9OM0vb+gcD88=
X-Google-Smtp-Source: ABdhPJzS9iV1qJY8ffp8nFaqsTpOj8toaEiB5rjsgen8vRb6Eph4QDLXf+2AV/B88PcuQrrBpYdTKQ==
X-Received: by 2002:a17:90a:1690:: with SMTP id o16mr24103981pja.148.1602565713923;
        Mon, 12 Oct 2020 22:08:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4547:: with SMTP id x7ls6416755pgr.2.gmail; Mon, 12 Oct
 2020 22:08:33 -0700 (PDT)
X-Received: by 2002:aa7:8154:0:b029:156:4b89:8072 with SMTP id d20-20020aa781540000b02901564b898072mr4844745pfn.51.1602565713306;
        Mon, 12 Oct 2020 22:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602565713; cv=none;
        d=google.com; s=arc-20160816;
        b=DQZLr3lEFmvCU/dNXmr1HAHjzjujQmf2mE2YWbIEorg5qHbbsrUF5wLMI8qTIYVnbE
         R3vNBmSeX7Q1AiAe1wXt2bJhRr7N2FwjQgkSlMpe4r/Q2u1OP8Q6c1LQTrZtoRVDpGxU
         HUZ4ovs7Ppd9teAw7PU5xTXDZXeyqnjqW3RDwjzRQyFjdNkDtwHskgAwm1tDWCsE5p1y
         q/n+YA5OdLdIX/BflpoQVmgPwCiCWNFWEO22MehbG8//J4NAC31sGzD2YwvlmTLKGvv+
         QB+HS72OoTNm7/YwT1O8SF1x0iXHwrSeye/nSC16lyU+1P9uL9S/ntaM6txW1cEfF9Bd
         5l/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=myC4QxIeMZFXjeNW7a1PS/FU6ygKZ5J7YIO3+g4d9lI=;
        b=ZdK5cycnhg+UlHHzpQvIjan2/STtrXYLPrRG5oScr5wiTJPrytbZmP+AS25Apx5Q8F
         3gfysiTiac/GVDsQOLMlmM38Kabs1W3YgdgVSYGz0yBn6BZLAgitMdw2WJZqb97ikgDj
         Ue48wTTr598QrWSk0LMSMWkhzUwSq1a2OWSe/WQlca22utzCjjC82jCgpzGpj/yBMRRl
         qoxGVRZp+wPvg89h0/oAQi8o/XSWVP0dmXJ1ZRJgBqSWwsmTYxkT9LPhcRxrr5YiGwnE
         PAA8SFUAX0FjrLlu1oeVX3H8X3Pvoh5IXTf+J1ya4ZkYe2xrDhKGgiH8LZZvgQdWMxLP
         ShQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U9hShzmt;
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id k65si1357141pfd.1.2020.10.12.22.08.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 22:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-jkNFnSL9PtGQEj9eqqFalg-1; Tue, 13 Oct 2020 01:08:30 -0400
X-MC-Unique: jkNFnSL9PtGQEj9eqqFalg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2777F64092;
	Tue, 13 Oct 2020 05:08:28 +0000 (UTC)
Received: from localhost (ovpn-12-47.pek2.redhat.com [10.72.12.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DF3E76649;
	Tue, 13 Oct 2020 05:08:26 +0000 (UTC)
Date: Tue, 13 Oct 2020 13:08:24 +0800
From: "bhe@redhat.com" <bhe@redhat.com>
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"rostedt@goodmis.org" <rostedt@goodmis.org>,
	Rajender M <manir@vmware.com>, Yiu Cho Lau <lauyiuch@vmware.com>,
	Peter Jonasson <pjonasson@vmware.com>,
	Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Message-ID: <20201013050824.GK25604@MiWiFi-R3L-srv>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=U9hShzmt;
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124
 as permitted sender) smtp.mailfrom=bhe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On 10/12/20 at 05:21pm, Rahul Gopakumar wrote:
> Hi Baoquan,
> 
> Attached collected dmesg logs for with and without
> commit after adding memblock=debug to kernel cmdline.

Thanks, I have got the root cause, will make a patch for your testing
soon.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013050824.GK25604%40MiWiFi-R3L-srv.
