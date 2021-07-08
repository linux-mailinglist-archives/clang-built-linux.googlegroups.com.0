Return-Path: <clang-built-linux+bncBCI27E5CQECRBCFMTWDQMGQESDL2SBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B943C1A0A
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 21:46:18 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id c13-20020a25880d0000b029055492c8987bsf8319229ybl.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 12:46:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625773577; cv=pass;
        d=google.com; s=arc-20160816;
        b=oW1IRozNRrlvlQejOX5oN+jx0+WqPyAsrreY44qSzy2BvoCbQbtlbIn5Rrst4ij+51
         d9jghBUmJsavRZMlHXe2Fi8s2Klc+j8B6sPNznGFgt47/MTtcxGYJhnBVaYNeBrQQsUw
         U/xP0aafi94zLnDT1I/Vqt83kYdUay8slizEph+WT0KhU5rJgHH1WZ20ua1y+ziJ560P
         yElPjezagrrNY9XIQu5LWmhtRrrlaQLVc/WY0ipMoAXmcB5fzP/e9BoN/C7aVKSPKUWy
         HpYIzVJ0WHPMvRal3DNLVXcwRlES5DdHZUF+UyRGKuf9Mb5YWRxbA7yTmsBjnDMBb2X3
         yEpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Ahp/AgM4FNgYRwAaODI+FivAGj53KPByHPMhdWaSp8U=;
        b=jnP0t75eZbmmnGX5qwzlwZE0p3ahynrB/jiS3mByNZBbEwSNYYIboumJqh9wng0FXD
         +0KzUsSP9PXd23rjC9SyT5IpsjvRG5wFccUHr/4UtjnZLK1Kuscucrj+1ci6CgpifTqF
         AxrzNDxpgUaGyscfnj1ziOVXAekqFAq/pCv7BDRlbT6k5LVnrskHKx9x/Cyk1R7UZd6o
         DpQ2J2+Gn1goWeuQWDU67z1eX9AFCgXrxcXp4/SXt7z5w8t5MfTFz9WXhAUn3TUqAJ+y
         UUzN/yLlRxnxG0ApkBB5N/2b8ynb52Kfq6hYzrDg6sBsLPE/BNfg4XqaYj1Guv0UlI2v
         nqvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tnwoBooF;
       spf=pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ricarkol@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ahp/AgM4FNgYRwAaODI+FivAGj53KPByHPMhdWaSp8U=;
        b=QKfb0BeIFTjPBeqQ7d8bIQ0g5OY19oT23vLiuz1y9sOhnMYZMKTTW6EAIfZLDrYkFI
         QpY9pLdZ0ikiE1+Gh/8JZiTfaXVRr7FCWo0U3CvZS0aWWBkiSxn3voex27SyTzvthzQZ
         6wbK2zZmo6xo5ZBU60nqw94JV+3d20yRI/lb4zrZAArUu7h/sdGlILXKterOp5cDzxjn
         BIJ7n1y9a37A/6Hu0dOHxMO+BkBZkQ54gH2f7U3zEt6GEDzEGsFl63UrF9KADi7ud51D
         WFY59g8H1/7G3yL4ZaKimIbAXsL+ZdyM7mbmHu8+TEnsW1BjguJOdEPN5kwbvnuhR2Hw
         +Pnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ahp/AgM4FNgYRwAaODI+FivAGj53KPByHPMhdWaSp8U=;
        b=k/mhHl9R++1e1jDRa1AuQuVli5C4Tiu6uah0l3DUeuua/ybnEuBKCb792iarJP92V7
         5yxRmgkkUTvLFaEUkV6sZexxAsYrfjrsT26+rRRJ/KKs/fQ5pe+6mxg9lWJQUyNWSDcQ
         ZGtw8JDev1LCgt3jzjSVbXSNcQ3BR/C3PlQ/tDXI2EBPLU85KqKD8zHcejMz/v6kZwba
         2vK/G5WK6gK80BZ+98DlqxGrS/w5ZgKOEllsa1kLCo+SrZnPn7A2+Do9/x6+75UMZfUw
         gSE1WU76WLlKQJ5DJthK3aRHhTyD/+sr4PVnGXRums6xvc6aePoY8kcx8al+TPTE6nMa
         80YQ==
X-Gm-Message-State: AOAM531D20rXFSiveVFSupwS9toRMhZFqPJ7RTsrFmr5ODsLLI1W82nn
	70PfNkNDiVDZoISfz+4dl6g=
X-Google-Smtp-Source: ABdhPJwNfQFWnm0bV7d8TXZvRZT1X9lPBK3bSC3DTW3iB81ldjvqZxVaen3N7p1BMwLY4CP8MJ52/Q==
X-Received: by 2002:a25:aa09:: with SMTP id s9mr42412031ybi.165.1625773577064;
        Thu, 08 Jul 2021 12:46:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:305:: with SMTP id j5ls1907594ybp.3.gmail; Thu, 08 Jul
 2021 12:46:16 -0700 (PDT)
X-Received: by 2002:a25:428d:: with SMTP id p135mr43579706yba.163.1625773576633;
        Thu, 08 Jul 2021 12:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625773576; cv=none;
        d=google.com; s=arc-20160816;
        b=hq5y0J6lvUnX5A0I4QKJh1DknFuw2OPYP6c3s7q0lxh4aDPBPQhzdQMVk1fHidodQr
         LoO8GC6MkFjI2chEh99udbtbsW4608i98H45Tw6+wtrcQ3cIPi73M4elPVDS7TD6fUWR
         sYkd7BaQa9sd3+cTHChXA9MwEbQMJJMStQq4bvlZVU799yAGF0t0hzNJggml83nWE9xR
         g6OOzs7LQMDyNNfBTksMgnyaJcdSVy4qD2ykd+i5yNogoCk8CynFFe5MIEsGaLJ9IrTA
         JYA4NjtHuA9nYOTrwnpiEdwTObc7CQBs6okY9mXLLESDEnW7q/MlvaGMr8GT0fAC/7Y6
         zpHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k10aRlUR7+OenDnP6mq1+oUG1mQi2nyXNA5HL2wFblk=;
        b=CVw8XBVqZx9UenbnqElXdl/f2lXH64IdXgSpcHHNLkXfFYsqVmCu58LkeI9oaW2BRp
         8JR8LkJJ1Qi4PXXCYJP+1oyfs0/ddDEXosuTw0dKbmjhhbz9gLVA4f+NDVLhAFdmxX00
         iVEgLhfTJMKK0cPIO5ypVOCXRJXa5mewLoJn208jCnP0l4DnzMFoi+fB4Lq0Es+yDhQq
         bCVKwq839lY7YLGm0uNNondThPfCTdIA0XYvVNvZ0zNpEarQOw1CRU112eslKEmjWsUu
         Tp7OPvwfFDBy37B4zGB/y3Xfo+QKhqs97zKocC9MKemQZvP9o47U9J+V3DXJVFOkti9Z
         48fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tnwoBooF;
       spf=pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ricarkol@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id c13si453992ybr.5.2021.07.08.12.46.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 12:46:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id x3so3714071pll.5
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 12:46:16 -0700 (PDT)
X-Received: by 2002:a17:902:b409:b029:129:a9a6:fc76 with SMTP id x9-20020a170902b409b0290129a9a6fc76mr13442909plr.68.1625773575662;
        Thu, 08 Jul 2021 12:46:15 -0700 (PDT)
Received: from google.com (150.12.83.34.bc.googleusercontent.com. [34.83.12.150])
        by smtp.gmail.com with ESMTPSA id y9sm3506954pfn.182.2021.07.08.12.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jul 2021 12:46:14 -0700 (PDT)
Date: Thu, 8 Jul 2021 12:46:10 -0700
From: "'Ricardo Koller' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: Jim Mattson <jmattson@google.com>, kvm@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>, Joerg Roedel <joro@8bytes.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/5] KVM: x86: Use kernel x86 cpuid utilities in KVM
 selftests
Message-ID: <YOdWAvtk66Rbv9Lk@google.com>
References: <20210422005626.564163-1-ricarkol@google.com>
 <c4524e4a-55c7-66f9-25d6-d397f11d25a8@redhat.com>
 <YIm7iWxggvoN9riz@google.com>
 <CALMp9eSfpdWF0OROsOqxohxMoFrrY=Gt7FYfB1_31D7no4JYLw@mail.gmail.com>
 <16823e91-5caf-f52e-e0dc-28ebb9a87b47@redhat.com>
 <YOc0BUrL6VMw78nF@google.com>
 <8a4163ee-ac31-60fa-4b8b-f7677ec0fd46@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8a4163ee-ac31-60fa-4b8b-f7677ec0fd46@redhat.com>
X-Original-Sender: ricarkol@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tnwoBooF;       spf=pass
 (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::632
 as permitted sender) smtp.mailfrom=ricarkol@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ricardo Koller <ricarkol@google.com>
Reply-To: Ricardo Koller <ricarkol@google.com>
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

On Thu, Jul 08, 2021 at 07:57:24PM +0200, Paolo Bonzini wrote:
> On 08/07/21 19:21, Ricardo Koller wrote:
> > > I also prefer the kvm-unit-tests implementation, for what it's worth...
> > > Let's see what the code looks like?
> > I'm not sure I understand the question. You mean: let's see how this
> > looks using kvm-unit-tests headers? If that's the case I can work on a
> > v3 using kvm-unit-tests.
> 
> Yes, exactly.  Thanks!

Cool, will give it a try and send a v3.

Thanks,
Ricardo

> 
> Paolo
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOdWAvtk66Rbv9Lk%40google.com.
