Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBFW26WAAMGQE3MZFDOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A98A310D97
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 17:06:47 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id r10sf3822379ooh.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 08:06:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612541206; cv=pass;
        d=google.com; s=arc-20160816;
        b=EvxsjwpeghfxKxne9A7/7mk/rq7YQzbDKOKNDhY1GARYK8IplONTobK/nIB1X+tOt4
         6HBjNl0QxTP1loGShr30W9BNyqjqSl3+W6AntN7ladxp/fj+iakw7eHPQgeJt0CceHNP
         XnfIkJjELxrGKcH58yCO5IdQ6wm1n6U/hI94v829ihFj8zHrM0mO4nxEWbT0urcjbdsz
         w8mrJ1x+X968djv9Kq7dArtyy1C/O7JPn3lJcMOzhsafXZrJvtg/8scmqMSYbjgZE0nK
         Vwmx2ZX1V6IyCsX6eSIiRnCHjKTMvtRKyTKpq+/KT7iIWrKOnwiaGUEeUsxJ3UOzZBBn
         68FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VvzkSMJvJ9SWUA5mjaQUFa26npxAj7tv+N3pwj6uwLo=;
        b=wsdDxxJDWeBAZgRwf380cn09pJcMnrTAXTex1ixuqawLDIF1mnnKRFjNfmye8pD2Ez
         v5Iine1iym1FKAwnGkew7YYEKrLECqSapGKjmhco3WZX2WWPItJFVcQZFj1FDmeWuUoC
         O15E/shSYr/b7PgkStl2viKpJr5sPIIs4ldy41k1ppekXnXMVhzQS7kJwjQ8baJyv2OE
         4o+kLJmJgGvBlQ+gbwPXnIs0mFArNvEIeAzMGjQ+ux1giR9k+EgQcWqZY61u8cRDDSWN
         dEYS2SgR931I8VwHwW0bXtv/yGkXQEOgsjctR7pK5QwZRx9VLRmVyDzD+FCOdz/4LqZo
         NH4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=N19lstyf;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VvzkSMJvJ9SWUA5mjaQUFa26npxAj7tv+N3pwj6uwLo=;
        b=H89+gbPmRr+50A2J5KYfgE2/aRphlUbEFsZI7bELX2QBGo2DD6Huimt6HFj3S0oEh8
         e+5EX/F6F37/frjHI2OTK7eo8/ZzG/24qDQBNH1y+Orppay6ay3IwQNbMVylmebcqayh
         KuOFwQa0s3VVZqXgptPZ6iTJDW9inbFwoNWIK4ch5iGrVdC1/akQRJTDSsld2S9lsmF7
         VTU22vPjs9Ba8b2wzRz1DQkKjKtC6JGo2ztnUeTMNRW097Wb56DXTHEyt5ipCHTS+TK2
         ybPO+sibKbWUfFEVMasjWo2esw1lb/yduLR6uCmKL0xBh2xULJreizWCgzG+aQOTUaV1
         /+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VvzkSMJvJ9SWUA5mjaQUFa26npxAj7tv+N3pwj6uwLo=;
        b=ofCJTIqrdOhdJRTupi8puxBTGxGM2lMFvY/0PgwiHLjOIx8MV1UMelD7SEvi2CYFIR
         tIo40PCAVSBHZk1PdgmB7t736yMbtNbyO7/9j3h2Nq5ZeXIVqI6Yi3B3VQumnP/pdet5
         eqQkiRN1+bOkGr03BSV7vglqDaUaYBRr6aUbzOsYcAh4vwrRE3Ov8LFnDw/0/bjCmfhl
         5ou7KPlOADc0S3qXX8L+z6uE/VDYqAciuIdUqOCZe1xb6WTuVe6nTwPZnDPGflOx6YmJ
         KuJ/mvl3L47ykLVe/LnmynNcaggoFjHydOxJfy6gPYtHoBioJh3ZMGkEU0saP0ghDMB1
         osBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319vsUaw1n+MsFn/L6/Uuork0ForCTA4abZbP3I0Wj78byR6G0A
	FcLRbx/wLdJh8ZPxgJz/SYQ=
X-Google-Smtp-Source: ABdhPJytIeM4NYQIxCGb9rPmBixAZ7ny5kGIKLIbxOQW3ZHtFsNmPT2DHLp18netxTT8R0TJaBIOnw==
X-Received: by 2002:a05:6830:1101:: with SMTP id w1mr3803352otq.64.1612541206303;
        Fri, 05 Feb 2021 08:06:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:52d6:: with SMTP id g205ls129023oib.8.gmail; Fri, 05 Feb
 2021 08:06:45 -0800 (PST)
X-Received: by 2002:a05:6808:1290:: with SMTP id a16mr3462021oiw.161.1612541205913;
        Fri, 05 Feb 2021 08:06:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612541205; cv=none;
        d=google.com; s=arc-20160816;
        b=fhYt3uxxjosgljX0B+3pCOz8wbIrbHzv94CWUyhtCmvv7I+jk/VruxhTifmwi5IPJq
         IcfFfSQKSTT7+48w5qhiPFPtRrutjeACZZMDj2wzQc6axJPemz3Go4wdeNG9nGHcU1AS
         HrEOZn0HrZLk0km/BOIP2FpMa39elan5/1M8Pbi3Ba8aJlWeme4nAAayiNxGagWjRVtq
         dyPby/Ea8C3pTEenlkW+EIHnTllfL1xXcngn6TQqxEWI35WUPOpawKN2XHFft65tacjS
         CzOjv35F9sFwiBx329VjlSb/1vHGmnIY0AGaEdu7Ox9cXgLJXOPCT1idZXPxwP5hymlO
         haIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ho3tOctqEoxCOE6gMIkdW0UcvSoMXVdTFgGozThwqkk=;
        b=ZQ/LAWFMjZ5/RnU2vUHKLiEbblxyM1Rh+t+yX9YVOY0ijVfMzHoXj1woyYzZ5oWAkv
         I1lECM1+j7IpeLHxcvk4UxdO15NceSVhxumnN7IoZu7cF+BcARq32PMMicH1INun7g01
         WaSHGyKWI+ydfkhDH3HvI9xY4whFu8YOSc+H4mHAKgf9C7fNxxqh/dhoRR7rN86A+v2n
         3FjoarD9que6AhPsqRKKeLZL13Y50bnOls7psp2ydIRscfWJrs59X3WpQAa/iNj+a98t
         zmW7JizVwBjM0zYfZDpa+zOiTd0DeJ52W5Zf0r2ZWFlI1fYaM8sMG6PefHnJM43BWGTW
         V4/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=N19lstyf;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b11si358704otq.0.2021.02.05.08.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 08:06:45 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D08C264D92;
	Fri,  5 Feb 2021 16:06:44 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 3750740513; Fri,  5 Feb 2021 13:06:41 -0300 (-03)
Date: Fri, 5 Feb 2021 13:06:41 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Chris Murphy <lists@colorremedies.com>
Cc: bpf <bpf@vger.kernel.org>, Jiri Olsa <jolsa@kernel.org>,
	dwarves@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>
Subject: Re: [FIXED] Re: 5:11: in-kernel BTF is malformed
Message-ID: <20210205160641.GE920417@kernel.org>
References: <CAJCQCtRHOidM7Vps1JQSpZA14u+B5fR860FwZB=eb1wYjTpqDw@mail.gmail.com>
 <CAEf4BzZ4oTB0-JizHe1VaCk2V+Jb9jJoTznkgh6CjE5VxNVqbg@mail.gmail.com>
 <CAJCQCtRw6UWGGvjn0x__godYKYQXXmtyQys4efW2Pb84Q5q8Eg@mail.gmail.com>
 <20210204010038.GA854763@kernel.org>
 <CAJCQCtQfgRp78_WSrSHLNUUYNCyOCH=vo10nVZW_cyMjpZiNJg@mail.gmail.com>
 <CAEf4Bza4XQxpS7VTNWGk6Rz-iUwZemF6+iAVBA_yvrWnV0k8Qg@mail.gmail.com>
 <CAJCQCtRDJ_uiJcanP_p+y6Kz76c4P-EmndMyfHN5f4rtkgYhjA@mail.gmail.com>
 <20210204132625.GB910119@kernel.org>
 <20210204163319.GD910119@kernel.org>
 <CAJCQCtT-i0Lv2zxUDko3XuiHpUqOnYPeND5LzD=zgrB1-GNvAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAJCQCtT-i0Lv2zxUDko3XuiHpUqOnYPeND5LzD=zgrB1-GNvAg@mail.gmail.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=N19lstyf;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Em Thu, Feb 04, 2021 at 08:10:52PM -0700, Chris Murphy escreveu:
> On Thu, Feb 4, 2021 at 9:33 AM Arnaldo Carvalho de Melo <acme@kernel.org> wrote:
> >
> > So I think that for the problems related to building the kernel with gcc
> > 11 in Fedora Rawhide using the default that is now DWARF5, pahole 1.20
> > is good to go and I'll tag it now.
> 
> dwarves-1.20-1.fc34.x86_64
> libdwarves1-1.20-1.fc34.x86_64
> 
> Fixes both "failed to validate module [?????] BTF: -22" type errors,
> and 'in-kernel BTF is malformed" with qemu-kvm and libvirt.

Cool! Any fedora user here please give the update some love by bumping
its karma at:

https://bodhi.fedoraproject.org/updates/FEDORA-2021-804e7a572c

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205160641.GE920417%40kernel.org.
