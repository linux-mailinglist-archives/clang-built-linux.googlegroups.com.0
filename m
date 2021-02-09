Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB2WBROAQMGQEBIEYB3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 695753156A8
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 20:22:19 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id y62sf6348277oiy.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 11:22:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612898538; cv=pass;
        d=google.com; s=arc-20160816;
        b=MFVclQdwjTGR+WUpkunAsBAawb0vVWQ8kxkvUrSD/AH3RZKeVvNRLV7Wf9WNt6U7rz
         LHogfK07yrgnqOnY3LfxAxiiuV/GZEXrKFLCQMO7aIsfDBjW8HZOVvB7I2KCT67DEznc
         fm0ilx2czprB+JJdNnZHUfab0iQyuvkWYLGA6bR16BayGHFGkvbhgPCjrt5IwM+gzq9g
         /NN7vXafAbaqdu3GQPNgOgl9CTwd85lj3VX7kUjyihZ0qJJ/wmnH7jHOtjRXZfgJCb9M
         5n7djvJGlNRKUBZzaER9LAjme2GLT5nhbvhvIcscTiVwUCQNO4JXMjNohLuV7z5eSZEG
         oEVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uH6QZdVPMu5zE0MF1FgM4ryMEQWebGvmxErKXyBghSw=;
        b=EVjwiIHuWM3LIysUQUXqRR9dTMAYwGGnX+eoVRdp/v+tl3dmlbcz0d0YchFD6qHwKm
         HzRfnSWeBbr7aG+pvdcsU4UQTnHDXZP0hHJ1zHzX9xCHkB6TFoTSqgcIrmqT+5YUdDMu
         nFcBecAk2l4RISWhbY0nKYDER0DCDw3fWkIroJrjq+afYLesobJb5AHIUqnqGpmdT5W4
         t9eiacELJL5B5quz6+wEW1K/2vcmDkQqbiLkUnYaNGIt6z7yAepztJeTXOcRVryjt8CL
         Abm6VfpjCuG5fPVdXZdrzXtBz/51sek4sWPrRXuOBZoS3J6tvbRGr9rxzfBG2rAkdYXP
         PmtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CSniu71m;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uH6QZdVPMu5zE0MF1FgM4ryMEQWebGvmxErKXyBghSw=;
        b=jjKzb8Z1V+JCJ/KBewvSocOK7sVUg365Swp4jcXDxvYjpAEuinMFx/XpPqC8aPN/ML
         8C/3Jj7cyALdotahNpt6AS4rkAoX40O69LXTFivY6D9DIG/Lvm7WHQPpYTXxyVYdDNbX
         qIC0Zvb9Z4jr7W6Y+B+sLL/571HXgpGGWQO1HuhIv0FyFBKRTIpGbYzOBzkJmh8v93tC
         34DWNAkiesC16e+VFii/xGiSsd0NbSjojKQnfopBe+ZIIOTeEiGjjstqW/3hP8Oxp0YN
         qwGWMqbmo1IJKsT0uFU8ldZNB/V5dCfJPbZwM32ykVlWVpEKxrdTmF6QktnVBIkMzEJj
         yBUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uH6QZdVPMu5zE0MF1FgM4ryMEQWebGvmxErKXyBghSw=;
        b=SFNjgjNBAP/H2z7803gXXlnW9XolU9PRNc4AlpetuOmNBgVZOucY5nQLGVa0mPXguF
         iPWTbG7lD64S5NRlrntj8ss4wDh6KubYqzYk3XQppqznfW3ZqhYeE/qbSXeooXA3Zzxv
         lyQ38ySCrpoJGlRXkcUKqUXi8D5RhJ5LhOU+jXed087V8axC2CjQ7ExBe9hEyMhdJxee
         QDl54VCY/dzoalY1+EHnIZXdIuMjCtQ6aIbVvZYuvC3UUhsBZKAkb0HMoQHkUMGx2XHM
         0tvP9sfXgYd3jeS9KmZk77xf0QWBr4fbqEcbY3Eqy2BHZEpWI3B49zL9zEAg2H9G2CPe
         r0mQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wKF2DuRcGgYBTlRbS6547+ayzw8mmO9OgUs2jf+g3jgZryIm/
	pbseHN2i3Yo8INdajFOG5go=
X-Google-Smtp-Source: ABdhPJxCuafTpwxCMzidIM5V98o4tVVXhc36FB61AEsMlqC4i2S0i6a/LewuC/Ds/qNqEgfIgqvyIQ==
X-Received: by 2002:a9d:261:: with SMTP id 88mr17028084otb.264.1612898538448;
        Tue, 09 Feb 2021 11:22:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2a88:: with SMTP id e8ls4980825otb.6.gmail; Tue, 09 Feb
 2021 11:22:18 -0800 (PST)
X-Received: by 2002:a9d:2ac4:: with SMTP id e62mr13676529otb.139.1612898538023;
        Tue, 09 Feb 2021 11:22:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612898538; cv=none;
        d=google.com; s=arc-20160816;
        b=clsxbwNpeOrnJX1ymYxX4oG0uZuiKslFxv21JRQRzDbiww4TNWRRV/OcKxu46+Z7he
         2XIBBzR+2nYMvuL/dQVEHYIcWhS25berVCVecM9LmK2QkItyjv9TNWwnLO8SdJVqO48C
         8kuUL3Q8AeTqxPdeKJ9QeyspQ1gUr1KoGNnXd9tjyKsMx/6HNjFF2fIdsqu8XL1ADTRu
         qjT1oVlhZvPUz3+65MaHqQwS4BOIqITOnaN0SVxvf7wX3HdowVcoD/1sf5jf1HiFDQ2N
         675AQei3jIQsr9VVIkWsMxQ3GQnc1aYLmuvDn1+Kb7lGmWVvEJejMQ6pgtRKCgbwRwx7
         RLNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Lq3ulMPstfAjyDEy9civCh6EIWyjgx/qxynJZ4PmPe4=;
        b=GqnQ4zzfIhTNBHFyuQKithdCJaGW397oTgAqrPOI0VMkeoZotWdiHlARZkj17zdK4N
         tgpLfmBScQKKcK5M/KB/7TdUePUSwfz/+nh7dTdwKEvCGX0CM0aXCL+HhS6LA+0sy+4A
         E3EsMpLqfIvAvcod+7uoDiLYVf3iIhB98A8bJqzpazDTVpcmQ5jRubgBwQGzjGEwlr0R
         wezqEh8qAAVbH3ZQyOvLRH4mL23BgW1WGmqtFmEXAcgNR9n4swyIUT8+ROhPhB9SWzpx
         uUcMPei/hhFivJH65tCY9uWgXs1z5XESXkW0ZfNmS1k7rot/pDjIKXgu4cEf2kAs/ICd
         GiZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CSniu71m;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r27si1463595oth.2.2021.02.09.11.22.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 11:22:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-ACA2lMuhOwio1Mglt_UuFw-1; Tue, 09 Feb 2021 14:22:13 -0500
X-MC-Unique: ACA2lMuhOwio1Mglt_UuFw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1A4A1005501;
	Tue,  9 Feb 2021 19:22:09 +0000 (UTC)
Received: from krava (unknown [10.40.192.77])
	by smtp.corp.redhat.com (Postfix) with SMTP id 6DAC55D9C0;
	Tue,  9 Feb 2021 19:22:06 +0000 (UTC)
Date: Tue, 9 Feb 2021 20:22:05 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <YCLg3U7fpeigGUG7@krava>
References: <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <YCKwxNDkS9rdr43W@krava>
 <YCLdJPPC+6QjUsR4@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCLdJPPC+6QjUsR4@krava>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CSniu71m;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

adding Arnaldo to the loop

jirka

On Tue, Feb 09, 2021 at 08:06:16PM +0100, Jiri Olsa wrote:
> On Tue, Feb 09, 2021 at 05:13:42PM +0100, Jiri Olsa wrote:
> > On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
> > 
> > SNIP
> > 
> > > > > > >                 DW_AT_prototyped        (true)
> > > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > > >                 DW_AT_external  (true)
> > > > > > >
> > > > > > 
> > > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > > strange, given vfs_truncate is just a normal global function.
> > > > 
> > > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > > that appears to be nops, which would suggest it's traceable
> > > > 
> > > > 	ffff80001031f430 <vfs_truncate>:
> > > > 	ffff80001031f430: 5f 24 03 d5   hint    #34
> > > > 	ffff80001031f434: 1f 20 03 d5   nop
> > > > 	ffff80001031f438: 1f 20 03 d5   nop
> > > > 	ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > > 
> > > > > > 
> > > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > > addresses only for static functions, not the global ones (global ones
> > > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > > 
> > > I'm still trying to build the kernel.. however ;-)
> > 
> > I finally reproduced.. however arm's not using mcount_loc
> > but some other special section.. so it's new mess for me
> 
> so ftrace data actualy has vfs_truncate address but with extra 4 bytes:
> 
> 	ffff80001031f434
> 
> real vfs_truncate address:
> 
> 	ffff80001031f430 g     F .text  0000000000000168 vfs_truncate
> 
> vfs_truncate disasm:
> 
> 	ffff80001031f430 <vfs_truncate>:
> 	ffff80001031f430: 5f 24 03 d5   hint    #34
> 	ffff80001031f434: 1f 20 03 d5   nop
> 	ffff80001031f438: 1f 20 03 d5   nop
> 	ffff80001031f43c: 3f 23 03 d5   hint    #25
> 
> thats why we don't match it in pahole.. I checked few other functions
> and some have the same problem and some match the function boundary
> 
> those that match don't have that first hint instrucion, like:
> 
> 	ffff800010321e40 <do_faccessat>:
> 	ffff800010321e40: 1f 20 03 d5   nop
> 	ffff800010321e44: 1f 20 03 d5   nop
> 	ffff800010321e48: 3f 23 03 d5   hint    #25
> 
> any hints about hint instructions? ;-)
> 
> jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCLg3U7fpeigGUG7%40krava.
