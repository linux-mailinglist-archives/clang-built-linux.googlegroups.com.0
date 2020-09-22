Return-Path: <clang-built-linux+bncBC32535MUICBBTNQU35QKGQEB6Q66DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA36273AC0
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 08:23:10 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id y17sf12999941qkf.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 23:23:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600755789; cv=pass;
        d=google.com; s=arc-20160816;
        b=FFTBueCUgnHgVNeTvZu6bL2t8pmI4dFPcKbo2sqtgMWv0+NHt//qyH5oeXxbsd2zYw
         3UxMRBypCANCH2gKImQHNVajOHcCemThItnHWPiguKchDZgLNYYFa8+6XAqKv3QhdbGf
         r310AvEifmjP4oPNGD9ZsfVTZThpNfaSaArp5Pbp69jAN0niyB55VmcpURX84rfJFTH7
         FukhEsLRKlFe9c3rPYh6+uivvmd13ZcoJ9Ez9v74uF1WxuP9rJw2XMo/BIGndVXUhVyH
         NbYoVaQLlgAPxk39T4jbU8hHKICIsm4o2fWUsiUpknLBToN09fX7jqsWTMgfOg7qj18T
         zh0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=CYv16UA8rq+2dJzfJS3U4uYW1q9yM6bvmO++ypsMryQ=;
        b=wIZTV6PG4UWOWiuNEDob+Kb0adDVPP0q8+8fw4xev1TXvyoMGbwmjj46jqpezgHuSq
         VBnEm8+LMlhDOKb7RZOcHnG6a7rZLFA0kIQwsdy0os//bKiKTGh2iNOxwsvrUAHzARzY
         KbX228x+XDq3++7Uwdwh2c95CYzDJvy1HThkm35drT+OuEPfckLST4rCcp+EpIPr7BxF
         S/bvqYucoN8zgtRhZDgdWfXQojTAk4BD97u35hWIJK6wE4PizLc2OzYjzAGISsxH/8QH
         2Tc3bZfFgglNssDvuhsgxx84ocz8RberVVTI5Sks7cWc8gNhcUU1Xr64cSDmP/O4tMve
         Kw/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E69akbOX;
       spf=pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CYv16UA8rq+2dJzfJS3U4uYW1q9yM6bvmO++ypsMryQ=;
        b=WiIwVmwctwmrAmZ1OKly0mzz9Sg9ePv9mduqwCjocVoJ2vnnxsaU5C5SuE+kOmQE9A
         hKJi3NbQg24s7341aMW0YerN2O9n1G2wAgrpE0j6nBfu0hX1F4J7lLZJtR8ATekWJHa1
         SMED8FkOLb7PmxComxjx9lhhJn19vvnk+8bRgKK/b9rEOGfcymDY31Gu1CE6UINO6rD/
         daOE6ELoBIeEnkhC56HCp+4zES3YtksWT2vL2x4PTOjJ1M2CfFJqgWU5sO0ctmIvQeqH
         ZCoA4IXKkcRJmlnjuyhZRyavFpVZBzHrT9AhOnB4/PwDvDVqzb4fJ6xTVECkiG0GxOew
         CkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CYv16UA8rq+2dJzfJS3U4uYW1q9yM6bvmO++ypsMryQ=;
        b=FBBQSrGcsppWiHepHctVAu1c8ioVMw6CXPYT39lMYdDn4NNiuq50xMh3oX1zuanruL
         Vc/0ETNouNKXobJ83CGhRQgYlABMWZMJQWFCo7pa/bAcduxmSjiZH5rGs31HSqn6DPpF
         IbJsbtm/H20j0EFiZaQ2zWeAPMwKx0kkOoRAT2pndqIFmailhHWgr2oGX8ujoY9a4AbX
         yhsHbDZbD9A2LJ4noWkoeVCUyAUjTK4Q+zyvS3rY3EZ+mWNzZKUbK6eYnyy6DCzN+K09
         GQmXHFdVAeEYDref75Dpw9xhhBQykzqiSDAKnrWWY5Uk6rjtegZCPjVBXtSrqvS1N/7M
         K/Aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532G8JyKBQeFOZ5Lfmd4+Kgww/iuuNo5Xi9vJcLNTxaLBbWmz2DO
	ywFEPWj1yeFo0IoL5/huqcE=
X-Google-Smtp-Source: ABdhPJy4u5y/wyyzk71yKltbrThEHg2RpPyEaAQtwupS8xqzPuBnE9m9SEtSNIsZ0nk3QUDfEgKCPg==
X-Received: by 2002:a05:620a:5f4:: with SMTP id z20mr3456459qkg.260.1600755789463;
        Mon, 21 Sep 2020 23:23:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls7486126qkk.6.gmail; Mon, 21 Sep
 2020 23:23:09 -0700 (PDT)
X-Received: by 2002:ae9:ebd0:: with SMTP id b199mr3426560qkg.39.1600755788974;
        Mon, 21 Sep 2020 23:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600755788; cv=none;
        d=google.com; s=arc-20160816;
        b=g5Gzix3j2Zr5rEdnRUg9QzDFRTaFgZAM6ZH4sbEQZOg+OTPP4G3fPpXrOAYgASKbfU
         G1j+RJiR/zuzDkpx4pLHBcQli8A0EkG51MSc3cBKIRaIiYHv25ERWH7WeaiyPJji5VwY
         2LGHo39Cd6SdfqlOpUC81aJmbP0LeJpiL4HEiNpiVHHhqz1It16TaFmPEvo0y6/y2yf2
         XdHbsrho1Mko1w1xy5rCW6IblZThIOjnXUMQl4lx76RNEiOcT9tjiq2t93U6eyiC/vG2
         cNN91WjwHUsWGcI7NY3VOqVPEYQYDI3U7z0h/foKYg4a1AsiCgcU68cfsZ2INZ9QAWx8
         ZVow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:from:references
         :cc:to:subject:dkim-signature;
        bh=Mzmhfdv4n5rZyzbrasI27bxC5DpWgPB4WGSFctyqRwY=;
        b=WfqIPXzuM9rJvEgIQzY9RjuNxrWmggQ/wYalEF88HDkvtt3JST/4coGVb6dN8b95KI
         GPzTH+tjNDRRD0CLMHlIihW+6/dWyR8PlBlyxAyFKR+AocPDirxPjaG1BSewwh6C9cXR
         LuAiTLeuHjR4nDzE2YJ37lOtRsIYzHGRsKSAav41A4aso37jaSQM+90dIpzbcy6+/wYe
         TUmbWDm0+J93l8AJ18swWLjkxdjtF53CD8EYAOI35OWIw1wlcW7fxdq9oT35jOI6ZzfX
         xFLXsFG0AhpOdKNUoT9urjFDiRJlDE0XsfaoZvW+SpyyO5zykLIFw4lfOwm76eICll9k
         UrtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E69akbOX;
       spf=pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e1si600205qka.0.2020.09.21.23.23.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 23:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-_Mdf06wSMq2VG4_GlCXl0g-1; Tue, 22 Sep 2020 02:23:04 -0400
X-MC-Unique: _Mdf06wSMq2VG4_GlCXl0g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A31B41005E5E;
	Tue, 22 Sep 2020 06:22:59 +0000 (UTC)
Received: from [10.36.113.20] (ovpn-113-20.ams2.redhat.com [10.36.113.20])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 91CE073682;
	Tue, 22 Sep 2020 06:22:55 +0000 (UTC)
Subject: Re: [PATCH] kernel/resource: Fix use of ternary condition in
 release_mem_region_adjustable
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: akpm@linux-foundation.org, ardb@kernel.org, bhe@redhat.com,
 dan.j.williams@intel.com, jgg@ziepe.ca, keescook@chromium.org,
 linux-acpi@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-nvdimm@lists.01.org,
 linux-s390@vger.kernel.org, mhocko@suse.com, pankaj.gupta.linux@gmail.com,
 richardw.yang@linux.intel.com, virtualization@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, clang-built-linux@googlegroups.com
References: <20200911103459.10306-2-david@redhat.com>
 <20200922060748.2452056-1-natechancellor@gmail.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 mQINBFXLn5EBEAC+zYvAFJxCBY9Tr1xZgcESmxVNI/0ffzE/ZQOiHJl6mGkmA1R7/uUpiCjJ
 dBrn+lhhOYjjNefFQou6478faXE6o2AhmebqT4KiQoUQFV4R7y1KMEKoSyy8hQaK1umALTdL
 QZLQMzNE74ap+GDK0wnacPQFpcG1AE9RMq3aeErY5tujekBS32jfC/7AnH7I0v1v1TbbK3Gp
 XNeiN4QroO+5qaSr0ID2sz5jtBLRb15RMre27E1ImpaIv2Jw8NJgW0k/D1RyKCwaTsgRdwuK
 Kx/Y91XuSBdz0uOyU/S8kM1+ag0wvsGlpBVxRR/xw/E8M7TEwuCZQArqqTCmkG6HGcXFT0V9
 PXFNNgV5jXMQRwU0O/ztJIQqsE5LsUomE//bLwzj9IVsaQpKDqW6TAPjcdBDPLHvriq7kGjt
 WhVhdl0qEYB8lkBEU7V2Yb+SYhmhpDrti9Fq1EsmhiHSkxJcGREoMK/63r9WLZYI3+4W2rAc
 UucZa4OT27U5ZISjNg3Ev0rxU5UH2/pT4wJCfxwocmqaRr6UYmrtZmND89X0KigoFD/XSeVv
 jwBRNjPAubK9/k5NoRrYqztM9W6sJqrH8+UWZ1Idd/DdmogJh0gNC0+N42Za9yBRURfIdKSb
 B3JfpUqcWwE7vUaYrHG1nw54pLUoPG6sAA7Mehl3nd4pZUALHwARAQABtCREYXZpZCBIaWxk
 ZW5icmFuZCA8ZGF2aWRAcmVkaGF0LmNvbT6JAlgEEwEIAEICGwMGCwkIBwMCBhUIAgkKCwQW
 AgMBAh4BAheAAhkBFiEEG9nKrXNcTDpGDfzKTd4Q9wD/g1oFAl8Ox4kFCRKpKXgACgkQTd4Q
 9wD/g1oHcA//a6Tj7SBNjFNM1iNhWUo1lxAja0lpSodSnB2g4FCZ4R61SBR4l/psBL73xktp
 rDHrx4aSpwkRP6Epu6mLvhlfjmkRG4OynJ5HG1gfv7RJJfnUdUM1z5kdS8JBrOhMJS2c/gPf
 wv1TGRq2XdMPnfY2o0CxRqpcLkx4vBODvJGl2mQyJF/gPepdDfcT8/PY9BJ7FL6Hrq1gnAo4
 3Iv9qV0JiT2wmZciNyYQhmA1V6dyTRiQ4YAc31zOo2IM+xisPzeSHgw3ONY/XhYvfZ9r7W1l
 pNQdc2G+o4Di9NPFHQQhDw3YTRR1opJaTlRDzxYxzU6ZnUUBghxt9cwUWTpfCktkMZiPSDGd
 KgQBjnweV2jw9UOTxjb4LXqDjmSNkjDdQUOU69jGMUXgihvo4zhYcMX8F5gWdRtMR7DzW/YE
 BgVcyxNkMIXoY1aYj6npHYiNQesQlqjU6azjbH70/SXKM5tNRplgW8TNprMDuntdvV9wNkFs
 9TyM02V5aWxFfI42+aivc4KEw69SE9KXwC7FSf5wXzuTot97N9Phj/Z3+jx443jo2NR34XgF
 89cct7wJMjOF7bBefo0fPPZQuIma0Zym71cP61OP/i11ahNye6HGKfxGCOcs5wW9kRQEk8P9
 M/k2wt3mt/fCQnuP/mWutNPt95w9wSsUyATLmtNrwccz63W5Ag0EVcufkQEQAOfX3n0g0fZz
 Bgm/S2zF/kxQKCEKP8ID+Vz8sy2GpDvveBq4H2Y34XWsT1zLJdvqPI4af4ZSMxuerWjXbVWb
 T6d4odQIG0fKx4F8NccDqbgHeZRNajXeeJ3R7gAzvWvQNLz4piHrO/B4tf8svmRBL0ZB5P5A
 2uhdwLU3NZuK22zpNn4is87BPWF8HhY0L5fafgDMOqnf4guJVJPYNPhUFzXUbPqOKOkL8ojk
 CXxkOFHAbjstSK5Ca3fKquY3rdX3DNo+EL7FvAiw1mUtS+5GeYE+RMnDCsVFm/C7kY8c2d0G
 NWkB9pJM5+mnIoFNxy7YBcldYATVeOHoY4LyaUWNnAvFYWp08dHWfZo9WCiJMuTfgtH9tc75
 7QanMVdPt6fDK8UUXIBLQ2TWr/sQKE9xtFuEmoQGlE1l6bGaDnnMLcYu+Asp3kDT0w4zYGsx
 5r6XQVRH4+5N6eHZiaeYtFOujp5n+pjBaQK7wUUjDilPQ5QMzIuCL4YjVoylWiBNknvQWBXS
 lQCWmavOT9sttGQXdPCC5ynI+1ymZC1ORZKANLnRAb0NH/UCzcsstw2TAkFnMEbo9Zu9w7Kv
 AxBQXWeXhJI9XQssfrf4Gusdqx8nPEpfOqCtbbwJMATbHyqLt7/oz/5deGuwxgb65pWIzufa
 N7eop7uh+6bezi+rugUI+w6DABEBAAGJAjwEGAEIACYCGwwWIQQb2cqtc1xMOkYN/MpN3hD3
 AP+DWgUCXw7HsgUJEqkpoQAKCRBN3hD3AP+DWrrpD/4qS3dyVRxDcDHIlmguXjC1Q5tZTwNB
 boaBTPHSy/Nksu0eY7x6HfQJ3xajVH32Ms6t1trDQmPx2iP5+7iDsb7OKAb5eOS8h+BEBDeq
 3ecsQDv0fFJOA9ag5O3LLNk+3x3q7e0uo06XMaY7UHS341ozXUUI7wC7iKfoUTv03iO9El5f
 XpNMx/YrIMduZ2+nd9Di7o5+KIwlb2mAB9sTNHdMrXesX8eBL6T9b+MZJk+mZuPxKNVfEQMQ
 a5SxUEADIPQTPNvBewdeI80yeOCrN+Zzwy/Mrx9EPeu59Y5vSJOx/z6OUImD/GhX7Xvkt3kq
 Er5KTrJz3++B6SH9pum9PuoE/k+nntJkNMmQpR4MCBaV/J9gIOPGodDKnjdng+mXliF3Ptu6
 3oxc2RCyGzTlxyMwuc2U5Q7KtUNTdDe8T0uE+9b8BLMVQDDfJjqY0VVqSUwImzTDLX9S4g/8
 kC4HRcclk8hpyhY2jKGluZO0awwTIMgVEzmTyBphDg/Gx7dZU1Xf8HFuE+UZ5UDHDTnwgv7E
 th6RC9+WrhDNspZ9fJjKWRbveQgUFCpe1sa77LAw+XFrKmBHXp9ZVIe90RMe2tRL06BGiRZr
 jPrnvUsUUsjRoRNJjKKA/REq+sAnhkNPPZ/NNMjaZ5b8Tovi8C0tmxiCHaQYqj7G2rgnT0kt
 WNyWQQ==
Organization: Red Hat GmbH
Message-ID: <330ff427-6971-25ec-2380-d1c8ad2dc7bc@redhat.com>
Date: Tue, 22 Sep 2020 08:22:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200922060748.2452056-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=E69akbOX;
       spf=pass (google.com: domain of david@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
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

On 22.09.20 08:07, Nathan Chancellor wrote:
> Clang warns:
> 
> kernel/resource.c:1281:53: warning: operator '?:' has lower precedence
> than '|'; '|' will be evaluated first
> [-Wbitwise-conditional-parentheses]
>         new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
>                                  ~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> kernel/resource.c:1281:53: note: place parentheses around the '|'
> expression to silence this warning
>         new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
>                                  ~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> kernel/resource.c:1281:53: note: place parentheses around the '?:'
> expression to evaluate it first
>         new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
>                                                            ^
>                                               (                              )
> 1 warning generated.
> 
> Add the parentheses as it was clearly intended for the ternary condition
> to be evaluated first.
> 
> Fixes: 5fd23bd0d739 ("kernel/resource: make release_mem_region_adjustable() never fail")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1159
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> Presumably, this will be squashed but I included a fixes tag
> nonetheless. Apologies if this has already been noticed and fixed
> already, I did not find anything on LKML.

Hasn't been noticed before (I guess most people build with GCC, which
does not warn in this instance, at least for me) thanks!

Commit ids are not stable yet, so Andrew will most probably squash it.

Reviewed-by: David Hildenbrand <david@redhat.com>

> 
>  kernel/resource.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kernel/resource.c b/kernel/resource.c
> index ca2a666e4317..3ae2f56cc79d 100644
> --- a/kernel/resource.c
> +++ b/kernel/resource.c
> @@ -1278,7 +1278,7 @@ void release_mem_region_adjustable(resource_size_t start, resource_size_t size)
>  	 * similarly).
>  	 */
>  retry:
> -	new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
> +	new_res = alloc_resource(GFP_KERNEL | (alloc_nofail ? __GFP_NOFAIL : 0));
>  
>  	p = &parent->child;
>  	write_lock(&resource_lock);
> 
> base-commit: 40ee82f47bf297e31d0c47547cd8f24ede52415a
> 


-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/330ff427-6971-25ec-2380-d1c8ad2dc7bc%40redhat.com.
