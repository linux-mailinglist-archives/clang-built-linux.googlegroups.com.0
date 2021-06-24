Return-Path: <clang-built-linux+bncBCFYN6ELYIORB57L2CDAMGQETTK6HXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D0F3B296A
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 09:36:24 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id h10-20020ac87d4a0000b029024eccb9d079sf5428972qtb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 00:36:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624520183; cv=pass;
        d=google.com; s=arc-20160816;
        b=LvcndDxnSRUzrGA1/2Z5PdNU0jAJm3hepdQ/AwOIY8a96dasJdYSG6RX6vCHQFkoJY
         4f7J3o3ddCFvWIGaMmEeX1zd7obQjqqpQFB5eGYSPIKFHfI6HRhjIj2HChrluIqwxL4l
         TH2z+Mv1FhrEbadfOyNjjfL2Z3azqtg2p0e8lYUJUZFyqs8ipAr3H36C0CuP+ZE8Hukc
         lctxaI1bWDQ0/fZkiBTbkZrSfRnZE/7avZtnTc3fcS7SGXHH3lYxhu5ZEwJX39qFrnTi
         6+zT6LLNwKtMi7C47p7XlCJsJVqMsjBfqDzr+8TuWF+zKevIjii8wSjLMXBJJBHxpCpS
         9rYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=nQsX6aEH2Mz/61X25iaU8N6PQVPxDk3/1wKKh+vjF7k=;
        b=0EsC0rkRQhxxyQPNPKbTiUV4rlnxaaeewN7ykJYGZN184wi6MH3HbMJZFINoNz4dRL
         rM1yRItPnrx1m063ctBjviSzF/0L8NuCmQDXUUIl/2Egt5oczbhlYgJZJ+p72vTYYwW5
         EtdBB1/25CaaM/Py8oYqITX4p+fNOJErPwTJgm8V8DMzzU2ncqpL7tZGOZoesz3vTxPy
         9RmrU0vxNT4Bm5QQcVo6fNWTt2BxXWrN+EG3sLIpqLJDXBAxh7dqXeChvn1jnwZZRWJA
         B59FIo1x2d/SwBm+19aYyfgLbzMj77eYq1/Qu4YFnHEvSnKA6/3WaO1PQ6r9HLZrc+wB
         2FMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="L0r/nuN1";
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQsX6aEH2Mz/61X25iaU8N6PQVPxDk3/1wKKh+vjF7k=;
        b=ApFUKwdVGUyF+RMlU37r1XbHBShcJ7DUXT0OG0hs2iWV36peWdDGE3DpNEaJkqsYUz
         NZZ2E0bjnEbzOFe7SYaWIYbSORHuyu2ffvT6YY6wZ5JqX3qsS/sqCtA1rJvBjEaOQ0Jf
         3PYNR8QibDu1IgiRSd9t5IuBImNIsopC6sVm815K5zW30PRNrQhj13SFju4gAeGdm+7q
         aLFWIooRhr9mQR5T8ZzBaHA6GzfNa7J0XcgXybprhTkiTAjxbWqCSCR31NxIRW4Su1H4
         P+7YVTciXs/JWuNWNCCVAeU341PiVWpD/lEMWj3NiwlteqKFaOB4S4NXtEOqBl+GP70l
         04EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQsX6aEH2Mz/61X25iaU8N6PQVPxDk3/1wKKh+vjF7k=;
        b=OV/pVNOeMiDT2lqUjaf6pfTFpLLAxVAv6o4uaF/Pmh5Fod0IyN88bEg11f79gLv1D9
         GyJaESW1f56ylnI1QBrPHCk+7NMddR6Q49PitoMN/qrksC1/pBG3gt+76nlVVcHshRcs
         rUJiPE1PoKvZGqgWYLDRwsP5RWQ3Bh0Qg1wl6JL8VfFWwtTS5i1ba3s2kx6yyVVkTgQ7
         2CSxaiNfHZ+Uyzomm7TWmZ48qeaf0yw5zcfA5zF654ji2la6xsj9JeTWMJfP8S4Vm9UM
         GGE2StLYiSSVzTYZsjS+YTseBEITYrVFGlZh75P3ib5lBtQ0WoJmy7aSbQsNuSEnwfm6
         PDWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sHerGnTwgYcN5icGpyiYMxw3lIbgftVH5MTZ9E3S3DQHYlVf2
	8uA+awPFLC+c59AEKpkCDLI=
X-Google-Smtp-Source: ABdhPJyVUpsahcMS26Z9tYSOA5vkBIhVLlBl2WKQgnWgY6oO+FMt+4Tl1lU90wj+mtsVGzVmBOBn6w==
X-Received: by 2002:a37:9cd0:: with SMTP id f199mr520012qke.380.1624520183253;
        Thu, 24 Jun 2021 00:36:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2181:: with SMTP id g1ls3179080qka.10.gmail; Thu,
 24 Jun 2021 00:36:22 -0700 (PDT)
X-Received: by 2002:a37:9306:: with SMTP id v6mr4345430qkd.476.1624520182738;
        Thu, 24 Jun 2021 00:36:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624520182; cv=none;
        d=google.com; s=arc-20160816;
        b=FMKQIbvUdj5zCXOBgg5fu/m/3AUUXqK5l3SuBxMM+6DCt69k2sxwtbXBRkg+N7MKff
         MFqNNS1ubFbasNrCJ6dBw9KADKLiDmjwJpqjpaQF7figGjvQrEpEnH8hw83/pX1H1PpG
         Az9wqRt/J3FxnU7WBwjz/z453eWWgZZyT5zZbavoHrmsaAGqgkuMaH9Q84WNKIEfm4Lt
         eG4JgyJ/2etCHF6wpLi69PB4SviBYAlq9PXF5Cqa4zIIBWGzxKDuCe1N55Pu/1xr0MyL
         J6ThPhzeaQdIzxOWnFoAilgTw5hpzziRQpKhxyqAAVuRhfvGMGtiZqBXD0Ti1SuQkIba
         UUYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=J6mYhBd6vMYRzKP6c2NRzoQi5pryF/NzXWzS55AJuHQ=;
        b=w8cA27CJLU/qdcng9QrVQJbDFPs1OgV1CvCL+6ox5XKbqGYB9b+pkalD+eB+8XN6au
         DNR7GNWtaTCd/jGbc5if02dwZmO/MKi8GUYWgHb+hIci7dR85W1VSZL2U3YPU6Ck2jxr
         mYjODGT3s0ZHUyBG22bk9HEmQv0ts8MEBAXT3V8s5OuE3lZfUb6ANdRWzrGJo4ujnsgL
         Pk5JL9NbbfBa9OsQGLYKQthMlgwQrSQhD9LHVKoiDg5MVLAZN+CI8pEFWFGDKTuJcBnw
         Vg4aTAbsyTUPw2h6B6kK44qmI9H9AYnw3BnJCjjENGitEaMfAXtmc18TxAoL3f5AtEUG
         L9Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="L0r/nuN1";
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id c15si309470qko.1.2021.06.24.00.36.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Jun 2021 00:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-373-We1ZixMcNwWZ1R-uKaDOoQ-1; Thu, 24 Jun 2021 03:36:12 -0400
X-MC-Unique: We1ZixMcNwWZ1R-uKaDOoQ-1
Received: by mail-ed1-f72.google.com with SMTP id dy23-20020a05640231f7b0290394996f1452so2876156edb.18
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 00:36:12 -0700 (PDT)
X-Received: by 2002:aa7:d7cc:: with SMTP id e12mr5308282eds.388.1624520170723;
        Thu, 24 Jun 2021 00:36:10 -0700 (PDT)
X-Received: by 2002:aa7:d7cc:: with SMTP id e12mr5308268eds.388.1624520170560;
        Thu, 24 Jun 2021 00:36:10 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id n10sm1363235edw.70.2021.06.24.00.36.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 00:36:09 -0700 (PDT)
Subject: Re: [kvm:queue 329/331] arch/x86/kvm/x86.c:5646:7: warning: variable
 'r' is used uninitialized whenever 'if' condition is false
To: kernel test robot <lkp@intel.com>, Aaron Lewis <aaronlewis@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 kvm@vger.kernel.org, Robert Hu <robert.hu@intel.com>,
 Farrah Chen <farrah.chen@intel.com>, Danmei Wei <danmei.wei@intel.com>,
 David Edmondson <david.edmondson@oracle.com>,
 Jim Mattson <jmattson@google.com>
References: <202106241248.NsKD61ey-lkp@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <00a7915e-1d46-4eef-abb7-202e1d6e3b2e@redhat.com>
Date: Thu, 24 Jun 2021 09:36:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <202106241248.NsKD61ey-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="L0r/nuN1";
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
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

On 24/06/21 06:31, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git queue
> head:   42ac670e03c13e78b43177569bea49540d22661e
> commit: 3bd33d3f648e99bdf93f327f2abc40962d740b9c [329/331] kvm: x86: Allo=
w userspace to handle emulation errors
> config: x86_64-randconfig-a002-20210622 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 7c8a=
507272587f181ec29401453949ebcd8fec65)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=3D3=
bd33d3f648e99bdf93f327f2abc40962d740b9c
>          git remote add kvm https://git.kernel.org/pub/scm/virt/kvm/kvm.g=
it
>          git fetch --no-tags kvm queue
>          git checkout 3bd33d3f648e99bdf93f327f2abc40962d740b9c
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dx86_64

Botched conflict resolution, fixed now.

Paolo

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>>> arch/x86/kvm/x86.c:5646:7: warning: variable 'r' is used uninitialized =
whenever 'if' condition is false [-Wsometimes-uninitialized]
>                     if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK) {
>                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/x86/kvm/x86.c:5660:9: note: uninitialized use occurs here
>             return r;
>                    ^
>     arch/x86/kvm/x86.c:5646:3: note: remove the 'if' if its condition is =
always true
>                     if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK) {
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/x86/kvm/x86.c:5537:7: note: initialize the variable 'r' to silen=
ce this warning
>             int r;
>                  ^
>                   =3D 0
>     1 warning generated.
>=20
>=20
> vim +5646 arch/x86/kvm/x86.c
>=20
> 23d43cf998275b Christoffer Dall    2012-07-24  5533
> e5d83c74a5800c Paolo Bonzini       2017-02-16  5534  int kvm_vm_ioctl_ena=
ble_cap(struct kvm *kvm,
> 90de4a1875180f Nadav Amit          2015-04-13  5535  			    struct kvm_en=
able_cap *cap)
> 90de4a1875180f Nadav Amit          2015-04-13  5536  {
> 90de4a1875180f Nadav Amit          2015-04-13  5537  	int r;
> 90de4a1875180f Nadav Amit          2015-04-13  5538
> 90de4a1875180f Nadav Amit          2015-04-13  5539  	if (cap->flags)
> 90de4a1875180f Nadav Amit          2015-04-13  5540  		return -EINVAL;
> 90de4a1875180f Nadav Amit          2015-04-13  5541
> 90de4a1875180f Nadav Amit          2015-04-13  5542  	switch (cap->cap) {
> 90de4a1875180f Nadav Amit          2015-04-13  5543  	case KVM_CAP_DISABL=
E_QUIRKS:
> 90de4a1875180f Nadav Amit          2015-04-13  5544  		kvm->arch.disabled=
_quirks =3D cap->args[0];
> 90de4a1875180f Nadav Amit          2015-04-13  5545  		r =3D 0;
> 90de4a1875180f Nadav Amit          2015-04-13  5546  		break;
> 49df6397edfc5a Steve Rutherford    2015-07-29  5547  	case KVM_CAP_SPLIT_=
IRQCHIP: {
> 49df6397edfc5a Steve Rutherford    2015-07-29  5548  		mutex_lock(&kvm->l=
ock);
> b053b2aef25d00 Steve Rutherford    2015-07-29  5549  		r =3D -EINVAL;
> b053b2aef25d00 Steve Rutherford    2015-07-29  5550  		if (cap->args[0] >=
 MAX_NR_RESERVED_IOAPIC_PINS)
> b053b2aef25d00 Steve Rutherford    2015-07-29  5551  			goto split_irqchi=
p_unlock;
> 49df6397edfc5a Steve Rutherford    2015-07-29  5552  		r =3D -EEXIST;
> 49df6397edfc5a Steve Rutherford    2015-07-29  5553  		if (irqchip_in_ker=
nel(kvm))
> 49df6397edfc5a Steve Rutherford    2015-07-29  5554  			goto split_irqchi=
p_unlock;
> 557abc40d12135 Paolo Bonzini       2016-06-13  5555  		if (kvm->created_v=
cpus)
> 49df6397edfc5a Steve Rutherford    2015-07-29  5556  			goto split_irqchi=
p_unlock;
> 49df6397edfc5a Steve Rutherford    2015-07-29  5557  		r =3D kvm_setup_em=
pty_irq_routing(kvm);
> 5c0aea0e8d98e3 David Hildenbrand   2017-04-28  5558  		if (r)
> 49df6397edfc5a Steve Rutherford    2015-07-29  5559  			goto split_irqchi=
p_unlock;
> 49df6397edfc5a Steve Rutherford    2015-07-29  5560  		/* Pairs with irqc=
hip_in_kernel. */
> 49df6397edfc5a Steve Rutherford    2015-07-29  5561  		smp_wmb();
> 49776faf93f807 Radim Kr=C4=8Dm=C3=A1=C5=99        2016-12-16  5562  		kvm=
->arch.irqchip_mode =3D KVM_IRQCHIP_SPLIT;
> b053b2aef25d00 Steve Rutherford    2015-07-29  5563  		kvm->arch.nr_reser=
ved_ioapic_pins =3D cap->args[0];
> 49df6397edfc5a Steve Rutherford    2015-07-29  5564  		r =3D 0;
> 49df6397edfc5a Steve Rutherford    2015-07-29  5565  split_irqchip_unlock=
:
> 49df6397edfc5a Steve Rutherford    2015-07-29  5566  		mutex_unlock(&kvm-=
>lock);
> 49df6397edfc5a Steve Rutherford    2015-07-29  5567  		break;
> 49df6397edfc5a Steve Rutherford    2015-07-29  5568  	}
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5569  	case=
 KVM_CAP_X2APIC_API:
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5570  		r =
=3D -EINVAL;
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5571  		if =
(cap->args[0] & ~KVM_X2APIC_API_VALID_FLAGS)
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5572  			br=
eak;
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5573
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5574  		if =
(cap->args[0] & KVM_X2APIC_API_USE_32BIT_IDS)
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5575  			kv=
m->arch.x2apic_format =3D true;
> c519265f2aa348 Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5576  		if =
(cap->args[0] & KVM_X2APIC_API_DISABLE_BROADCAST_QUIRK)
> c519265f2aa348 Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5577  			kv=
m->arch.x2apic_broadcast_quirk_disabled =3D true;
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5578
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5579  		r =
=3D 0;
> 3713131345fbea Radim Kr=C4=8Dm=C3=A1=C5=99        2016-07-12  5580  		bre=
ak;
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5581  	case KVM_CAP_X86_DI=
SABLE_EXITS:
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5582  		r =3D -EINVAL;
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5583  		if (cap->args[0] &=
 ~KVM_X86_DISABLE_VALID_EXITS)
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5584  			break;
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5585
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5586  		if ((cap->args[0] =
& KVM_X86_DISABLE_EXITS_MWAIT) &&
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5587  			kvm_can_mwait_in_=
guest())
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5588  			kvm->arch.mwait_i=
n_guest =3D true;
> 766d3571d8e50d Michael S. Tsirkin  2018-06-08  5589  		if (cap->args[0] &=
 KVM_X86_DISABLE_EXITS_HLT)
> caa057a2cad647 Wanpeng Li          2018-03-12  5590  			kvm->arch.hlt_in_=
guest =3D true;
> b31c114b82b2b5 Wanpeng Li          2018-03-12  5591  		if (cap->args[0] &=
 KVM_X86_DISABLE_EXITS_PAUSE)
> b31c114b82b2b5 Wanpeng Li          2018-03-12  5592  			kvm->arch.pause_i=
n_guest =3D true;
> b51700632e0e53 Wanpeng Li          2019-05-21  5593  		if (cap->args[0] &=
 KVM_X86_DISABLE_EXITS_CSTATE)
> b51700632e0e53 Wanpeng Li          2019-05-21  5594  			kvm->arch.cstate_=
in_guest =3D true;
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5595  		r =3D 0;
> 4d5422cea3b61f Wanpeng Li          2018-03-12  5596  		break;
> 6fbbde9a1969df Drew Schmitt        2018-08-20  5597  	case KVM_CAP_MSR_PL=
ATFORM_INFO:
> 6fbbde9a1969df Drew Schmitt        2018-08-20  5598  		kvm->arch.guest_ca=
n_read_msr_platform_info =3D cap->args[0];
> 6fbbde9a1969df Drew Schmitt        2018-08-20  5599  		r =3D 0;
> c4f55198c7c2b8 Jim Mattson         2018-10-16  5600  		break;
> c4f55198c7c2b8 Jim Mattson         2018-10-16  5601  	case KVM_CAP_EXCEPT=
ION_PAYLOAD:
> c4f55198c7c2b8 Jim Mattson         2018-10-16  5602  		kvm->arch.exceptio=
n_payload_enabled =3D cap->args[0];
> c4f55198c7c2b8 Jim Mattson         2018-10-16  5603  		r =3D 0;
> 6fbbde9a1969df Drew Schmitt        2018-08-20  5604  		break;
> 1ae099540e8c7f Alexander Graf      2020-09-25  5605  	case KVM_CAP_X86_US=
ER_SPACE_MSR:
> 1ae099540e8c7f Alexander Graf      2020-09-25  5606  		kvm->arch.user_spa=
ce_msr_mask =3D cap->args[0];
> 1ae099540e8c7f Alexander Graf      2020-09-25  5607  		r =3D 0;
> 1ae099540e8c7f Alexander Graf      2020-09-25  5608  		break;
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5609  	case KVM_CAP_X86_BU=
S_LOCK_EXIT:
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5610  		r =3D -EINVAL;
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5611  		if (cap->args[0] &=
 ~KVM_BUS_LOCK_DETECTION_VALID_MODE)
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5612  			break;
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5613
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5614  		if ((cap->args[0] =
& KVM_BUS_LOCK_DETECTION_OFF) &&
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5615  		    (cap->args[0] =
& KVM_BUS_LOCK_DETECTION_EXIT))
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5616  			break;
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5617
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5618  		if (kvm_has_bus_lo=
ck_exit &&
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5619  		    cap->args[0] &=
 KVM_BUS_LOCK_DETECTION_EXIT)
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5620  			kvm->arch.bus_loc=
k_detection_enabled =3D true;
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5621  		r =3D 0;
> fe6b6bc802b400 Chenyi Qiang        2020-11-06  5622  		break;
> fe7e948837f312 Sean Christopherson 2021-04-12  5623  #ifdef CONFIG_X86_SG=
X_KVM
> fe7e948837f312 Sean Christopherson 2021-04-12  5624  	case KVM_CAP_SGX_AT=
TRIBUTE: {
> fe7e948837f312 Sean Christopherson 2021-04-12  5625  		unsigned long allo=
wed_attributes =3D 0;
> fe7e948837f312 Sean Christopherson 2021-04-12  5626
> fe7e948837f312 Sean Christopherson 2021-04-12  5627  		r =3D sgx_set_attr=
ibute(&allowed_attributes, cap->args[0]);
> fe7e948837f312 Sean Christopherson 2021-04-12  5628  		if (r)
> fe7e948837f312 Sean Christopherson 2021-04-12  5629  			break;
> fe7e948837f312 Sean Christopherson 2021-04-12  5630
> fe7e948837f312 Sean Christopherson 2021-04-12  5631  		/* KVM only suppor=
ts the PROVISIONKEY privileged attribute. */
> fe7e948837f312 Sean Christopherson 2021-04-12  5632  		if ((allowed_attri=
butes & SGX_ATTR_PROVISIONKEY) &&
> fe7e948837f312 Sean Christopherson 2021-04-12  5633  		    !(allowed_attr=
ibutes & ~SGX_ATTR_PROVISIONKEY))
> fe7e948837f312 Sean Christopherson 2021-04-12  5634  			kvm->arch.sgx_pro=
visioning_allowed =3D true;
> fe7e948837f312 Sean Christopherson 2021-04-12  5635  		else
> fe7e948837f312 Sean Christopherson 2021-04-12  5636  			r =3D -EINVAL;
> fe7e948837f312 Sean Christopherson 2021-04-12  5637  		break;
> fe7e948837f312 Sean Christopherson 2021-04-12  5638  	}
> fe7e948837f312 Sean Christopherson 2021-04-12  5639  #endif
> 54526d1fd59338 Nathan Tempelman    2021-04-08  5640  	case KVM_CAP_VM_COP=
Y_ENC_CONTEXT_FROM:
> 54526d1fd59338 Nathan Tempelman    2021-04-08  5641  		r =3D -EINVAL;
> 54526d1fd59338 Nathan Tempelman    2021-04-08  5642  		if (kvm_x86_ops.vm=
_copy_enc_context_from)
> 54526d1fd59338 Nathan Tempelman    2021-04-08  5643  			r =3D kvm_x86_ops=
.vm_copy_enc_context_from(kvm, cap->args[0]);
> 54526d1fd59338 Nathan Tempelman    2021-04-08  5644  		return r;
> 0dbb1123043789 Ashish Kalra        2021-06-08  5645  	case KVM_CAP_EXIT_H=
YPERCALL:
> 0dbb1123043789 Ashish Kalra        2021-06-08 @5646  		if (cap->args[0] &=
 ~KVM_EXIT_HYPERCALL_VALID_MASK) {
> 0dbb1123043789 Ashish Kalra        2021-06-08  5647  			r =3D -EINVAL;
> 0dbb1123043789 Ashish Kalra        2021-06-08  5648  			break;
> 0dbb1123043789 Ashish Kalra        2021-06-08  5649  		}
> 0dbb1123043789 Ashish Kalra        2021-06-08  5650  		kvm->arch.hypercal=
l_exit_enabled =3D cap->args[0];
> 3bd33d3f648e99 Aaron Lewis         2021-05-10  5651  		break;
> 3bd33d3f648e99 Aaron Lewis         2021-05-10  5652  	case KVM_CAP_EXIT_O=
N_EMULATION_FAILURE:
> 3bd33d3f648e99 Aaron Lewis         2021-05-10  5653  		kvm->arch.exit_on_=
emulation_error =3D cap->args[0];
> 0dbb1123043789 Ashish Kalra        2021-06-08  5654  		r =3D 0;
> 0dbb1123043789 Ashish Kalra        2021-06-08  5655  		break;
> 90de4a1875180f Nadav Amit          2015-04-13  5656  	default:
> 90de4a1875180f Nadav Amit          2015-04-13  5657  		r =3D -EINVAL;
> 90de4a1875180f Nadav Amit          2015-04-13  5658  		break;
> 90de4a1875180f Nadav Amit          2015-04-13  5659  	}
> 90de4a1875180f Nadav Amit          2015-04-13  5660  	return r;
> 90de4a1875180f Nadav Amit          2015-04-13  5661  }
> 90de4a1875180f Nadav Amit          2015-04-13  5662
>=20
> :::::: The code at line 5646 was first introduced by commit
> :::::: 0dbb11230437895f7cd6fc55da61cef011e997d8 KVM: X86: Introduce KVM_H=
C_MAP_GPA_RANGE hypercall
>=20
> :::::: TO: Ashish Kalra <ashish.kalra@amd.com>
> :::::: CC: Paolo Bonzini <pbonzini@redhat.com>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/00a7915e-1d46-4eef-abb7-202e1d6e3b2e%40redhat.com.
