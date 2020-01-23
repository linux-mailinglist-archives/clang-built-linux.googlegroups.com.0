Return-Path: <clang-built-linux+bncBCPILY4NUAFBBL5TU7YQKGQE5XSZBJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EC2146FD4
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 18:36:48 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id c5sf2922338ilo.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 09:36:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579801007; cv=pass;
        d=google.com; s=arc-20160816;
        b=WYrJMmOHciiCsvxEcyyIXyiyRHmQV+PZupZqYTBAYx1Okp2cVTrRXQm6+MS2NyeY/G
         /yGekl6VS+HYYxuiJOqGPqBNN2g3LUzqQ2F1rq5QAWKNyslW7yDY2SDzT9jSkpnFZ6wX
         8k/czgAKu8ChH9kTWr02ccu5VPApVlXWF5Ea5vIPlgvgV+ZkeImlSyUFr3ncb15Q/uD3
         zmGKi+jBywYYGiVAab3c/q/kvnl8vvqPG5tUiZTKQnQi23FfitTTYOCmVeG/NBVC+DVQ
         /r+9Uv9hogBizX0Ytw96Nv9R47FJ3T0mwhLO99yArqnRAkofptMeHLL0XlCgLc3TIrYf
         3ALQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=/9crafK4DgQDd55ObtmJilY10R6z5HGg93SIwUhBWXA=;
        b=c0EuKTO+vSJPN8kQHamoyoOGYAOtjeWggJYw5vugfk+zLkY0q268DjpX3MRnLG1V2C
         sOxc8aGp3xrmOk2a3H6WmDjbSZPy/X5zk1WKZRQvVKISvSN2OBFSOiv43+qDeUzue9Nj
         SJ3YKpI/qXPFXbi1IcfW+lk3elMJOerUuZJH61YCZJdQO+koiX8K/i8eGzYblj3dLXn5
         3h4qJ7vxtH3hpEkX9j2ORlwHK+cubomV/Jbihq1esVuj0utPir2ETDsyc7Cer7CklQfA
         5CGiJNLI8ae2Jhf6PZa3G69JeoKNrdfkd6JAAfcO/ikFyivHUF+BQH5vKaICv/iCziUw
         P2OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gnrFCkM0;
       spf=pass (google.com: domain of longman@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=longman@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/9crafK4DgQDd55ObtmJilY10R6z5HGg93SIwUhBWXA=;
        b=YB+8cE/5YvL4URDjYp/yeYe+w+f1vJoJc7Nm6mgaKdAg22cAd54+Gt84l0MRKJ6aVy
         RGu7zEgzzjQbFwOqUP+bpRjW1gfxzi64ujISjSWWiLodpeXPPE4+u96cDsDppbANsj1E
         pZVIjyNRN8YglNhcFXG2qcT5rOWuYDDM8s5/Tfuzmfi9K3c+EatEMiTQXXz3hYz7siZa
         Zquf5b8T68obkbXBSEJOOsK//uCVh9yEBKA7ytnrauFY8tySo5Vnk20L+lnvJV0+5Qbd
         rtGwBx5P3tMpdhVkmuDxfPxOjTZN4uBBbu4nLETOwdhvDIP/ZoC1LBnkUj5X4T8WGjsR
         m2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/9crafK4DgQDd55ObtmJilY10R6z5HGg93SIwUhBWXA=;
        b=V9ykeUBQ8UiE9MX/DOM3Zy8zla56Z3uZgi0gvT+w6UYH6uSwMQjN/UXMhzXrBz9mEJ
         cOBWbqVnzC6PV8Oq+KIUlhPfrY0yp0pdg2C/XLdAVLN3bvIjRi397FmlUpsFu59MZD13
         lvxT2lWcu6q5RlRWulj48xTPmH7xdtzDAhmxMHBMGxWz2ZYzJQyouRVSJXXNSx0VBlzv
         fzYIpUHa6ZPI+pdogRcusZ6pjazBx/rqFT8AujHEcmD5fPWv1sJtLFuEznodgWnrGF6u
         Jm2fKOir0bmqD7WE6BpcYMZ9zSB7KUlnZSNhftlKXOpJv0QKRtW5nhCwUiQaAkYvLisG
         GjvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXsO4eb9+Uxu5K8rZ/3dHzixe4JfRvOcOulTNmBKEMLhhTCe0M0
	VuMyuASviE/GtJsGhhriNUg=
X-Google-Smtp-Source: APXvYqwSW4JOCu5kiy3vRlLGE9v9vIqmHa3ovsv7VwTC7UdhwZIONzwW8Wo/psZi7/6KetD1REZHYQ==
X-Received: by 2002:a92:af4b:: with SMTP id n72mr13795856ili.288.1579801007800;
        Thu, 23 Jan 2020 09:36:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1d89:: with SMTP id g9ls923045ile.3.gmail; Thu, 23 Jan
 2020 09:36:47 -0800 (PST)
X-Received: by 2002:a92:5889:: with SMTP id z9mr13878148ilf.268.1579801007401;
        Thu, 23 Jan 2020 09:36:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579801007; cv=none;
        d=google.com; s=arc-20160816;
        b=0wWjnlJkVjrw8z1jk/v/yrZmVpI5zswUjpTKhpIH9Ibk094j/VHejvf1oS/dTNua3w
         H2jZcdQJOhQJ7eusMx7lgYMC7FcLdJtdm+GDs4YUp6hmrMUwrC4+J7griRUazYCxLmOW
         Dq9oo5/D5E6ri1wklxB3ef8mstQZ7ft8jITaPjIUyS2FimnkK6Ig+0ZCYLKcz8v/wFDm
         Je0T6pMTUSUnUm6lutIQ6O8OEO1IS3hFMdwbDBN8f2n1HW9liFF7XD5h98/rjdca52wY
         GS2JV1XJBQqv3ffHE4t4Pdbf5zQJnP79yFjHnYVb5OsoYJn0Kc8hxOi/ghzUIXbQCHPL
         2uww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=D54wJCq+dcoWe+lOlchk/VMBTGpgOIcpCavPiOTlG1Y=;
        b=cL7XJ5af/VdNnHLElmZJnK/+Sx+YDSwNVz3CCu1s/aApAShZDy+T/nHkqw2JWkQ2hG
         eZtbMF62qU3RPHXFABrNp5yRs2RHTN2K3h7bq/dojtGvjQFDAMQUxdswhhuQZsfau4NQ
         sMdUyATCIkSoR65+VAu6XJt+DEaoYzSTG9urlEsIhnaTdlp5zGyseJ5wLCF42TG2k10u
         gvoXwws7r4c64LaM10XrNyTu0kb1Ts2qG523ngtUCmDYVLayu7I4By6fFXpkDttnp1fv
         HZtt4oT6kOSHE256fEVqt1lae9u/8vTPML0e9jOXUXp79Go6bhk3g9qiV1TWL6RzmRXd
         m5rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gnrFCkM0;
       spf=pass (google.com: domain of longman@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=longman@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id h4si113343ilf.3.2020.01.23.09.36.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 09:36:47 -0800 (PST)
Received-SPF: pass (google.com: domain of longman@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-d4aV-R_nMuWLziZ8mN2NoA-1; Thu, 23 Jan 2020 12:36:41 -0500
X-MC-Unique: d4aV-R_nMuWLziZ8mN2NoA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF6A31005514;
	Thu, 23 Jan 2020 17:36:39 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7762F8644F;
	Thu, 23 Jan 2020 17:36:37 +0000 (UTC)
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
To: Qian Cai <cai@lca.pw>, Will Deacon <will@kernel.org>
Cc: peterz@infradead.org, mingo@redhat.com, catalin.marinas@arm.com,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200123165614.GA20126@willie-the-truck>
 <48DF011A-3074-422C-BFBA-1A9F2EF4A7BA@lca.pw>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <f95c27b1-a8ca-bac8-e6bb-07ca9e87bcd9@redhat.com>
Date: Thu, 23 Jan 2020 12:36:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <48DF011A-3074-422C-BFBA-1A9F2EF4A7BA@lca.pw>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: longman@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gnrFCkM0;
       spf=pass (google.com: domain of longman@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=longman@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 1/23/20 12:31 PM, Qian Cai wrote:
>
>> On Jan 23, 2020, at 11:56 AM, Will Deacon <will@kernel.org> wrote:
>>
>> Damn, the whole point of this was to warn in the case that
>> vcpu_is_preempted() does get defined for arm64. Can we force it to evaluate
>> the macro argument instead (e.g. ({ (cpu), false; }) or something)?
> Actually, static inline should be better.
>
> #define vcpu_is_preempted vcpu_is_preempted
> static inline bool vcpu_is_preempted(int cpu)
> {
> 	return false;
> }
>
Yes, that may work.

Cheers,
Longman

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f95c27b1-a8ca-bac8-e6bb-07ca9e87bcd9%40redhat.com.
