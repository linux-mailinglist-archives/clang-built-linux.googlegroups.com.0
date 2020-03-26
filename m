Return-Path: <clang-built-linux+bncBCS7XUWOUULBBCOY6TZQKGQESA3WWZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEB4194B7D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 23:26:18 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id d4sf5481687plr.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 15:26:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585261577; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oiask7USrAhkSRym40InZZr0OwqfVX72iDZc/XentqA861E47FutmkM+J5TqeAAEsM
         mYkJIqGYq+u4yKBhKSoOnNFb9TiZcuAAKP6ud8FF/KkftIqCvR4MPT/fFwcYnc1ODDFo
         o+DzME3dzmrZRqMSH6/j4ldi7Wyx0SHe7tOvCQyQNrM5GOjyXKSHqSjCMkS2GDyAVm+9
         Cu/UyrvIiGhmezXwId4jQTZoK/MbtMJMiaVXdmbwJM+FuHQjNRR3eImAfWAg07w6tKgw
         LvEFqaSH3bM62ZUc7vLI1w0KvHDFWumt+6SYkvUA6Tjd5J21nb9h72Vmy35Vw4vaYJ8m
         x/UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZftZGyf29M1y55MKE9FiOD4RT1B66s1x04OpPv6y41Q=;
        b=EQpvCbt5sAlSAfRpTeLWokuzSYfavRRg8go9SvI73DOUfa/SDP2UIpDMvjNH+Z7nue
         5etqRwqP6Ec9M5n0xJxPXcXr9rFoodlsC1f1pQYOlowTgQ5z0ESo5gTWU29rkYNT86BJ
         JtM+M4OVl0S611AxV1IYtHarAAb+muG4x7yC9dWQOaD1tHv+n8fYu2oyXVKJF7O/eEQR
         s0BhpLScSWg8V4OUlG2n91u2EzSWbH0jIL12JGE9cgl7WWhkoZm8n3E4HuhmMpMFhfHr
         FkjiS63hNxPTRq8s8hPDVA2guM+uWuYWjN0FqAlrDhQCoxjuiGQoAaDjLcLbY4qn6jgf
         DkPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k5fgfGns;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZftZGyf29M1y55MKE9FiOD4RT1B66s1x04OpPv6y41Q=;
        b=eh5gb7yerEACmkpja/4Qkz8CJyn8lxvlDUl0PzwxBfrZESzrqZzURbaVTcN8NhV6/X
         oVWOeiRk5VRZRVHKfJY9gdxpa9Dba+qAXRn42YxI+iADACAinSuo2pMJOG50vXORhNB4
         Peu9sVYs25IyrZa3ihGZ49OIpjz3qIdgGWHxxlWGTq3hTeNF0CDFmtWbZo3Sv68MhsO/
         cFenY4RPQg/MaPBaJPvUr9f6KhOp83pgxph3bbWstXtPauUwUScgnLUIFhylQ3+UPejR
         SlhLBRV24HsthhWX5Q4J/IqxpJ3uFK1hrhqOBEJsN/l/6uypgaVUhSrotCAn+SsKx2ps
         ZRqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZftZGyf29M1y55MKE9FiOD4RT1B66s1x04OpPv6y41Q=;
        b=agi9JzpU3ftwOa1Pk8XIO5pmcqvDNW1vOQ4Fzf4Uf5CTxxLT2cVetpS2ylsPFPX4cH
         TUN1qCw8dPQJFyLoUp5OoGvBLJQOQ/MJNMXznhygbQM/PoqoKJ6JZspSD40Z4wGYn9Cj
         HcFCBubYtzyIpe3r7oRC3f54XzmV2qtcoChX6UmO/e20PDv/YLJapFsJKja12tUlgt19
         /Yqv2854ce6XvQnZ5kl2cHnxb+6nGNe0k7tb2Za/PHN3lo/zopB5W1Z0ZHNZ55DAXdje
         S6OTA+hitF4R+pIk4jwjrGN8KhQtJdC3pVrWDZmbb/cldnF/qMvx0s35x5tQ9cdIynU8
         TPUA==
X-Gm-Message-State: ANhLgQ10ikj1XlWXNBpjT4kWB6GyyuFRKrarRVi5VQVkQa2Gn9M5cVu2
	JhupPOL/reITuORPOKXSAZc=
X-Google-Smtp-Source: ADFU+vtkBjOLdSbmWp3x3csZq0QUUmGH3w/CEIfeKS2azf5KH+LmI+jXLL5lO443PM0CJQ807q0vBA==
X-Received: by 2002:a17:902:aa44:: with SMTP id c4mr5237251plr.56.1585261577180;
        Thu, 26 Mar 2020 15:26:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:98de:: with SMTP id e30ls4541963pfm.0.gmail; Thu, 26 Mar
 2020 15:26:16 -0700 (PDT)
X-Received: by 2002:a63:4850:: with SMTP id x16mr10843402pgk.317.1585261576695;
        Thu, 26 Mar 2020 15:26:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585261576; cv=none;
        d=google.com; s=arc-20160816;
        b=q4Rr2mpWc4+22K9ONmPixAM7bBwB4uw+6AnAKWzyo0kY4B/e1gEo/riP0Iyb2UW1wT
         hZGj/5zvhnxVLzALf4VsJFWzLD6QvWFtEtRXw0WQ9RoWNeWjurtJi2bCABaNsqjGgL3L
         7SJXXXCwTNibnvopa2tv9u446kVYVdkePz1bPcDiDz8giaEQzHJCwgaLySmIaN4QZroS
         X7kTlgNazGFhN/5EU8EGXzFHMMmx0q+cE5JNyjpDBlC+4TuPZEugtfxIYIbbQ4k+wj93
         qPryxhxPviMtmR96kollzSAc/4/4ZcPCxc0oBnUi/+fWQ96b6XAtk5tYX0vIF20XSLuz
         w4XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O/yC00w391epPPyp6RO8cwTZujVU6RxnjmFTptYooQo=;
        b=Y23ewo43Ik3HXUWY0i9SaNDV/Cea8exwOGesi/KpKn3VblOrSf5GbchPYOngYjjhWG
         DC13SqQo7Jo99/e1YoTRyOJKQRPzgeSR5ND1xBrF1CCzW28Musw9IA6zlYmH7pCllCDc
         f/PwQveGab6JEOkE4sb4GwBgqXUOadOzvQDJj5jh7sMgJ6UTyX8pmDSBE7IxNvL9ZkD9
         o0RGMse6BUf9nDtFTu26Y7D6MQ65+OmXVlMaXxVXXRSj9DxcwcEty5dFHaJJ3nYUt2/3
         ooFtV4pzIzH0N/k3jTVbOoRRDAO26/833RLe76W9HhGHxP9x6i8xAvBZ/ILJl5uv1+FA
         tRwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k5fgfGns;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 59si217152ple.2.2020.03.26.15.26.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 15:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id c21so2848870pfo.5
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 15:26:16 -0700 (PDT)
X-Received: by 2002:a63:1e4f:: with SMTP id p15mr11052058pgm.28.1585261576186;
        Thu, 26 Mar 2020 15:26:16 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id x71sm2462894pfd.129.2020.03.26.15.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 15:26:15 -0700 (PDT)
Date: Thu, 26 Mar 2020 15:26:12 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: linuxppc-dev@lists.ozlabs.org, Alan Modra <amodra@gmail.com>,
	Joel Stanley <joel@jms.id.au>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc/boot: Delete unneeded .globl _zimage_start
Message-ID: <20200326222612.zbbiyi75emq6npzn@google.com>
References: <20200325164257.170229-1-maskray@google.com>
 <20200326221625.GA22482@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200326221625.GA22482@gate.crashing.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k5fgfGns;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-03-26, Segher Boessenkool wrote:
>On Wed, Mar 25, 2020 at 09:42:57AM -0700, Fangrui Song wrote:
>> .globl sets the symbol binding to STB_GLOBAL while .weak sets the
>> binding to STB_WEAK. GNU as let .weak override .globl since binutils-gdb
>> 5ca547dc2399a0a5d9f20626d4bf5547c3ccfddd (1996). Clang integrated
>> assembler let the last win but it may error in the future.
>
>GNU AS works for more than just ELF.  The way the assembler language
>is defined, it is not .weak overriding .globl -- instead, .weak sets a
>symbol attribute.  On an existing symbol (but it creates on if there is
>none yet).
>
>Clang is buggy if it does not allow valid (and perfectly normal)
>assembler code like this.

https://sourceware.org/pipermail/binutils/2020-March/110399.html

Alan: "I think it is completely fine for you to make the llvm assembler
error on inconsistent binding, or the last directive win.  Either of
those behaviours is logical and good, but you quite possibly will run
into a need to fix more user assembly.

I am doing some experiments whether making clang integrated assembler
error is feasible.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326222612.zbbiyi75emq6npzn%40google.com.
