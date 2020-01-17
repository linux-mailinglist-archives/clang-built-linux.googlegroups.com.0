Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB6MGQ3YQKGQESLSRDGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 790081406DA
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 10:50:50 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id s1sf10155918ybs.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 01:50:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579254649; cv=pass;
        d=google.com; s=arc-20160816;
        b=jXWkffCttm2pJgaffIJOd3hqAW+VWwFA7OObUqzJMVrHfsF471/u5JwPR85I3wQeTr
         5VlVV1m/yCaBBKj9EgdwC/7sxCt/IIDJTMSR3zOqQdHsRY2iBLZoVkqEkjd1Z1t1mz1f
         blDWRG765maP6v8GuQQW3tr6ElOT9qWH0/cnBdfltJpjB2lE1yKO0RZqXQY0v/mKa1nb
         jQTb02Yl7WnTm+zR0u7ccRCs8EDK5GABQlDUymVn5Bu66SjC6W3Y7sjin7hi+FDuszrT
         OZYlouiSAEJUKuYcV8qnnb7Pow2jG7p/fTaXNMYVollUOsntG2yKs8/Y1rymrmHpxYwl
         oHXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=IaTAn0zw/0fVLN0PKze6Ay8L/LFVgmn8Mi96hfdIGAs=;
        b=lIn9/5gKjTPIrT90AMvNyr2rKmvPjSq16p4jeyerr1pjxZoEVNA/93KWkfbfJ23qne
         WEknyUSXvkOYWSfOb6D5ii+IDTqMdCFBSnXTCBBiYlMNMtopPvlk0k4wHigDY6wOnsO1
         QcSpJD+5Mk8mvqJUW4/rFoUhyRYmiG62DUved9ISF/3IwxjFtAlU3YK3wiDaVk5FXXAr
         MjM+mAZE6YXUeVefXIMHQjfRKtLZUwUOZ8yIzPywXvjAnutGiJ2GshKZsJmhc6QHNqoG
         t/aca4FT8WQC2UUAqCCVVz4GbXp/odD6I7zJBOhnFdbt/PzcxNE93Ux5bFjsQi9wLRKI
         CmDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YD19WJUY;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IaTAn0zw/0fVLN0PKze6Ay8L/LFVgmn8Mi96hfdIGAs=;
        b=oO720PO4OHqM5Sc7Y19GqLqZ117qDh4zWjPCHNqn9tQhKHobDjz7K1QVpqPmWVnqc6
         gDn3KvwVUzlowgZqr2GJWGuTBWR9ZVM26qIyiYTexmqZU3Ja3htSexuJWiGwiHG2uaEI
         dpngD7KXQS+82njsC1yrBXePxLpFJA0K72L1kNbUgcPOl9NP8LYUIdaMsLE6IethZxlW
         62xxCLrvgS+0O0II6QLX8fqpKs6sPsiL/7q1Or78aMGeaIpW/tb/Rm/HHcrRZUaQiPex
         3uaPtTu4mxawRbHmcLrncOOKDmOTVzw6qimsSn88P2zxEGWIvINU7q5ZFblhCeLJyAnH
         RP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IaTAn0zw/0fVLN0PKze6Ay8L/LFVgmn8Mi96hfdIGAs=;
        b=a4zdmDQoI0gO2t0FdvQikDO+PqSZWVu2CSn2WDVvOH7VRNJ4vrgAffuBsApA9HJLso
         wnD8sj5PHUd0jQV9qI3SeUVyyvx6a77W775mf9ajGcvwIkZ+lu5A+sCaf7q6jy5xNOu3
         rTRTA5y0hY4zYyo1B35K4+N0KBKuRrs7BzTmZX4Q4DP6ew6ORPAh1dT5SQjRR91e2Vzy
         CEO2JHvD/dFNtAl+eHS/z7vHgSaECIvAA1DXKQs/IUVXAc9zqHi1TMvD9IGO/rZREW1B
         hkQRAWzCOTwgWp28PUZzFBhNTNNhVuY12oQcKikT4251biF49kKQl13mQLMSGHEvRYwv
         tgZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvGusQwlkgHKo40UA7+fjEZk9eoyA3NdCwHiB90LCN3v7Der1E
	WFTp2+eOt1rXAtGvc8PluNM=
X-Google-Smtp-Source: APXvYqyh4RViiyXla3X9HgcyxCeQ7tG10jFlFuUk/YMoehp2yHPOoITgC8B3osHz3Qmy2/3tJjATVQ==
X-Received: by 2002:a81:8303:: with SMTP id t3mr28160747ywf.315.1579254649516;
        Fri, 17 Jan 2020 01:50:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:844f:: with SMTP id u76ls4037469ywf.15.gmail; Fri, 17
 Jan 2020 01:50:49 -0800 (PST)
X-Received: by 2002:a0d:c243:: with SMTP id e64mr30255819ywd.12.1579254649183;
        Fri, 17 Jan 2020 01:50:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579254649; cv=none;
        d=google.com; s=arc-20160816;
        b=ofZlqo3kWFnamE8eSWJRSK6PRt2pf+6zdVdtlJTpszHYZfltK9gVpEAtHN+y44sgMd
         t7KCZ/Op7hKM/cF9pVXz8m3dl50Cikkfc6IdBR7hjyeaUmqH9qy2+wn4hKEZ1A3p8425
         wqnlF7iuXdEXsZe2hlTcrp6RYbcbVf+xWIJDZ2m6f1/ZM3tduWYjDSZETMUJES3OpC2S
         JS+eIXSJnWmFWRc3X6j7UYDwXmbLkW0tuJWF5fVuWHB5OC/y4LmdHNPQyEPmAnPxRMp0
         e/q/4k+6nlweJ2dMDRiY/Ii2Tqs6y6NLu7rMY8EPbykoIp8g4QkzvBIQ5gc5Yu18Lc86
         DKpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=oJRJOOtAJx4rABOIyWYmHnWYUrcoGrCqCdDRh2YY52I=;
        b=aDjCu96SJNoMbtHyF48Z7dP6EkvNlG3GLHMq/QSfU3QlAfFef4LIT80aNcEdk51/ux
         5xYOcciGcV10q6+xSki6tTWDrD9vbFtK/wIidDTAthLXajERnMeheRAe4LL8k9oAjrk7
         Ub7O+m6PpLN5JjQOghBcPEjz1BzhkpWcsTaZ04VzJcZTzi301TW0YWgfEHYbfvVT4esB
         3E03LODdvGKN8QOuCARzHGwV0jk72h/zaNkqu6OY6AcV5dWy7km5Cx4es7Hp0db8M0z2
         PmhTDT63zWVbeHbCVs6Ag8OJraW25DCM5EQdNohbRaz2WjLVrNTsWX1qKhJwsjrsjEvC
         dfew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YD19WJUY;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id e186si284204yba.4.2020.01.17.01.50.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 01:50:49 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-_V-G8Dg_M0qYFThKymNL4Q-1; Fri, 17 Jan 2020 04:50:47 -0500
Received: by mail-lj1-f200.google.com with SMTP id k21so6063208ljg.3
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 01:50:47 -0800 (PST)
X-Received: by 2002:a2e:3a0c:: with SMTP id h12mr5110067lja.200.1579254646253;
        Fri, 17 Jan 2020 01:50:46 -0800 (PST)
X-Received: by 2002:a2e:3a0c:: with SMTP id h12mr5110047lja.200.1579254646128;
        Fri, 17 Jan 2020 01:50:46 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id s9sm14012128ljh.90.2020.01.17.01.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 01:50:45 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id D7C9C1804D6; Fri, 17 Jan 2020 10:50:44 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v3 09/11] selftests: Remove tools/lib/bpf from include path
In-Reply-To: <CAEf4BzYaLd25P7Uu=aFHW_=nHOCPdCpZCcoJobhRoSGQUA49HQ@mail.gmail.com>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918094179.1357254.14428494370073273452.stgit@toke.dk> <CAEf4Bzba5FHN_iN52qRiGisRcauur1FqDY545EwE+RVR-nFvQA@mail.gmail.com> <CAEf4BzYaLd25P7Uu=aFHW_=nHOCPdCpZCcoJobhRoSGQUA49HQ@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 17 Jan 2020 10:50:44 +0100
Message-ID: <87o8v2qumj.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: _V-G8Dg_M0qYFThKymNL4Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YD19WJUY;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:

> On Thu, Jan 16, 2020 at 2:41 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
>>
>> On Thu, Jan 16, 2020 at 5:28 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@r=
edhat.com> wrote:
>> >
>> > From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>> >
>> > To make sure no new files are introduced that doesn't include the bpf/
>> > prefix in its #include, remove tools/lib/bpf from the include path
>> > entirely.
>> >
>> > Instead, we introduce a new header files directory under the scratch t=
ools/
>> > dir, and add a rule to run the 'install_headers' rule from libbpf to h=
ave a
>> > full set of consistent libbpf headers in $(OUTPUT)/tools/include/bpf, =
and
>> > then use $(OUTPUT)/tools/include as the include path for selftests.
>> >
>> > For consistency we also make sure we put all the scratch build files f=
rom
>> > other bpftool and libbpf into tools/build/, so everything stays within
>> > selftests/.
>> >
>> > Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>> > ---
>
> BTW, this change also now forces full rebuild regardless if anything
> changed or not :(

It does? Hmm, that was not intentional (I was mostly focused on making
sure a clean make worked, not the opposite). I'll see if I can't fix
that as well...

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87o8v2qumj.fsf%40toke.dk.
