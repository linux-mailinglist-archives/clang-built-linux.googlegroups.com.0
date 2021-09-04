Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB2MJZ6EQMGQEMC46E5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D68400CC8
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 21:11:39 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id z19-20020a631913000000b00252ede336casf1642519pgl.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Sep 2021 12:11:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630782698; cv=pass;
        d=google.com; s=arc-20160816;
        b=yu46IseUfajukHSlpFwqlwG5pHIVdg6B7eeibTHCEjc3XCYF+dgXSE9d/tTGeQ+Tt6
         Zg0XE/2RZpKpIxSxJHYiyfhmizwwVtoxklYrM5rAGicvUUpsrmNv2KAiTH5P/EbGzFvL
         zFg34X04bHjg5u6+jkZ3gZTY5ZsWLdpS5My/bjlN2tPQZ0g6FIB5V2vhSSRSJ0KowzeF
         6Va9ilXlLaLjizw7jOV0YyIpJltKvOKkMadbO4wMeHTiOf1b+CWcXYSMMv4xd2Efj+BH
         WY0MSS8AsVEpz76c+dDBoN1iDUwbJRlj+ozKDcupH8yGpTZwqoL88ucAFs5y8t+TjubE
         q4gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ajsdROoW2pQeGbrKhu8s+cWSgu1WTMy1y7BjdG4k5ng=;
        b=oSfYF1EJSYoE+/pxcAX9PON0R8gtliHWlDP8mMxG71VcYORxLksZ+zhxbAER1xkcTe
         9GxITZmTuLeknRVIPv+OkXxMqL44jV3kJFTXhFcs8O5K/STtYyESnwdPrz2kPYUIrsjT
         C4MvOgRY0G7EhR/OV93p/ptaeMoYw5D0AhyuQz8vyvqvuIywt9lzW20fGrlg7iXC+PNj
         MNc85Cilrw3gbNLcdTsGv3SpLh7Lp8s7XjGM87zTHfebDKTZXoSH8bOuA7MqWyOsT7+n
         fDKbH/EFWqiyoZHt9h3lexxJsyHl0Ns/POaFRzmv59EyApVpH892KqwbL/LjRDkZxHE8
         J/GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RfAGUl1V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ajsdROoW2pQeGbrKhu8s+cWSgu1WTMy1y7BjdG4k5ng=;
        b=WVdOo4hQcNOEOaVmubW+KiU+ru18+srs3XlkGjSyqjxK0Nx941plcmf4Yfkrz1jdM/
         jOXY9hoa9Ylj50rrMAsb6F/QP+3ZRndQ2kOt4ZWVQT8HwzTOOHBnzU5NkImILg7jn3Ry
         gkgXGk00CxA0ycxAoQB1vghFKg08RW2pdgQ57jQF1XGlGE+o+5abFXRyrXgZ1W5t6h/5
         XYqqxHAN0RzAWZaOrfsjHMbOFoTgC9AnvfBq4evso/uyxShQdtFbHznF0NS3aTiuqU5B
         1/7WzBt29u2+V6bCQ5bXFIm7BtnPKyPimNJB9dsYtO/v9PT0axdb660zZGZ6YY7pJvb9
         8o0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ajsdROoW2pQeGbrKhu8s+cWSgu1WTMy1y7BjdG4k5ng=;
        b=hYc8QndEcQ6j6oTpeHy5V2cUw8De/YKyOyAZEFBtgn88090DcK1gPsEjQTBKe9wlB6
         IyfJCbS5Ia271yWlx8V6DHRv8vUZnuqygAAl0F/s6n0XTmZCajpH0u5mSwgIg2ujqGK9
         U/3I1S62yynadJTsNFUHAMuTw4AW4hYfCRBF1W/pfRkuvfYmhJVfpdizopFhgYks6vT8
         OKhtUZBfeJl1tBJ8prPnCUrYnaEz5T5qwk2ZqnVHI7rP/AuPYIMuTD5KHj0Sk0wZCXNv
         CBUsv1UM2yICHC7bOT4nxzmpPcxf7osrxH6d6BYW6y0gZrOgkC9HD9O5xVaqUjh+Xta0
         uimw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309PEGLdptxvXyvoeoel7oNDYeqN1T4H34gAH7cFG7BYyEqdviN
	S/3t4r4YntruRFImtUkwLpg=
X-Google-Smtp-Source: ABdhPJwGRH+/QiOO1HgBthpyormh9wWrW4Mund+pf5w8q6w/2IRT+sYJ9CFsRTGP2m1A7A6EIqSqNw==
X-Received: by 2002:a63:1309:: with SMTP id i9mr4750317pgl.192.1630782697764;
        Sat, 04 Sep 2021 12:11:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15d4:: with SMTP id 203ls1008541pfv.4.gmail; Sat, 04 Sep
 2021 12:11:37 -0700 (PDT)
X-Received: by 2002:aa7:98ce:0:b0:40d:a02f:5a59 with SMTP id e14-20020aa798ce000000b0040da02f5a59mr4553817pfm.20.1630782697151;
        Sat, 04 Sep 2021 12:11:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630782697; cv=none;
        d=google.com; s=arc-20160816;
        b=v1AiYxsF0LtxT+Cm3UbwtGS8Lz48kxiif9j0z9H71yiZFF4s3YG871/St/DOfd/gHM
         3Tlu8KAGBanCZvtDLSbHRENySEWMVLWfEcqjAY9QJ43hadQXrn+ojmClg0EEjnDCUqTu
         wQr4ZnfHR9RLzQLRZaGCvAP/mx4XORziQxXfZFuRLeW0gC6haYE5ZeJGjRTuMUtZMXM3
         65iWcjH9Cqf/i25r2Iv6LlX1/t8xUQ2pPCjus438EhDJe1VRZZqsl9SUuJ8+q3uFkf5q
         pzpSRj96Kr9PMSlwCFTeF1eW3+JLPOj4d9pJvgME6apgmy2t12UUI90oo0Vw42ZXLpm1
         REPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+vglIRiq2twF0gBLHp0cEuyzMuL4N3cukyGbV97IcVA=;
        b=K2BbUDkTvEoZumsKgGr6c3tmAhkvhnmhmYDlspASXjq2vQafXwwUMXL08YW1OCwlg4
         ceBcywA1SjYzyXzBN/5lZBRtLQI7wf1EdfCQJ6XwxlDZ6JthnvDTGDqhrDXWrkxwFNYw
         CGkL9Jezfj9VNcp8aI9fpJM9VdNKXk8LbyKGU0j4b7EVZDt55ZHhlk4QBLPvVbLkFaOC
         EpN9njg6FRWe5/ubdCXbxVgIek99rD3l0BfcpNckmMfelaOFo8xpN1ThvbFritFVP2nf
         mkusuwcyu27HPS2AjuKSmiG8ql0BUwKkeXp/m9bHyuFBcXhPOS72fc/aZU87pv6NSOTw
         UVqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RfAGUl1V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id w20si176533plq.2.2021.09.04.12.11.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Sep 2021 12:11:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com
 [209.85.210.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-q5cNfUqnPZOOSfisTF_TsQ-1; Sat, 04 Sep 2021 15:11:35 -0400
X-MC-Unique: q5cNfUqnPZOOSfisTF_TsQ-1
Received: by mail-ot1-f72.google.com with SMTP id v11-20020a056830140b00b0051af4c9ee9fso1506363otp.16
        for <clang-built-linux@googlegroups.com>; Sat, 04 Sep 2021 12:11:35 -0700 (PDT)
X-Received: by 2002:aca:aa47:: with SMTP id t68mr3462247oie.25.1630782694595;
        Sat, 04 Sep 2021 12:11:34 -0700 (PDT)
X-Received: by 2002:aca:aa47:: with SMTP id t68mr3462238oie.25.1630782694362;
        Sat, 04 Sep 2021 12:11:34 -0700 (PDT)
Received: from treble ([2600:1700:6e32:6c00::15])
        by smtp.gmail.com with ESMTPSA id c10sm680077ots.48.2021.09.04.12.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Sep 2021 12:11:33 -0700 (PDT)
Date: Sat, 4 Sep 2021 12:11:31 -0700
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/13] kbuild: reuse $(cmd_objtool) for
 cmd_cc_lto_link_modules
Message-ID: <20210904191131.mwbckb2dfxbvoez4@treble>
References: <20210831074004.3195284-1-masahiroy@kernel.org>
 <20210831074004.3195284-7-masahiroy@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20210831074004.3195284-7-masahiroy@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RfAGUl1V;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Tue, Aug 31, 2021 at 04:39:57PM +0900, Masahiro Yamada wrote:
> For CONFIG_LTO_CLANG=y, the objtool processing is not possible at the
> compilation, hence postponed by the link time.
> 
> Reuse $(cmd_objtool) for CONFIG_LTO_CLANG=y by defining objtool-enabled
> properly.
> 
> For CONFIG_LTO_CLANG=y:
> 
>   objtool-enabled is off for %.o compilation
>   objtool-enabled is on  for %.lto link
> 
> For CONFIG_LTO_CLANG=n:
> 
>   objtool-enabled is on for %.o compilation
>       (but, it depends on OBJECT_FILE_NON_STANDARD)
> 
> Set part-of-module := y for %.lto.o to avoid repeating --module.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

With Kees' suggested fix:

Acked-by: Josh Poimboeuf <jpoimboe@redhat.com>

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210904191131.mwbckb2dfxbvoez4%40treble.
