Return-Path: <clang-built-linux+bncBCVJB37EUYFBBK7N2GAAMGQEHMIWCBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF42308EC4
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:57:16 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id v190sf8054065qkc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:57:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611953835; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wrgypxfl6aLJhGTDKjGeqdsIn4VWWz6pt+AxxxUDuZ9g3+47/+q9jQ3zLUNd3c/vhp
         bcysBsljswbMMtzwAwvCnYf2sNI1DjbhzSJRZMnxyWVSFbJJi05oNdsbacuuRHKZXOwm
         7R7AOvweKNZ5ON+emcMYwQxXnekjA25ExJGtKX6pSklIXNwxhOR+03i1QGgfEEvVoX6l
         t/AaIRRCKygrI8z5C9Wb5FpAs9FB/b5TENdN4G9vBxos0ElEBSBURJY1vNsUF4Y7ldvW
         YZ3jQ90XUORQgtTk/Le09eGozOO09ZAJDhhs4wQ5fDfclT2RbbhDotcr8ObFtenmpIRv
         p+IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=K40aD2UJ6L74M+2trQ/No01gogZgqTtSmypd7Ck7L2g=;
        b=lxk3X/xRgqQWUzbjAc+XwwY7NQfnHAzjdiUXHLWRLe2x8Fuu64jhPSRVW3ZKdNXG6z
         EirpaIqoby+oUwj9NF5cWHtOx8sghdvmQ88wGQ2tWYhPDbaO92bcv3XA3j0AqQMwiA/B
         qrNTjuvUReD5l117+HMmewrOVl8BI01PprJM5JU5Fkdf5U6WR1kLVXmjSXtk0OPhAoet
         7jPUBEkLvVnL8WyewUwtumglpSCgV7/Bv3gp0YVzbOukA4mKjAAgCeIkYMTXs6uwOUkM
         YY5fPbJ1Zv61h4tVgfi6dKW5Qd8wXKpFIWq+YXOoGK+izc+MU73sxXpJ//nS7PUtc2wd
         mbQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ni3/YpOQ";
       spf=pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K40aD2UJ6L74M+2trQ/No01gogZgqTtSmypd7Ck7L2g=;
        b=rKvDGwYGNeyYG4WpSl+cgYTbrGJvfm2E1xVGxHl7jgJUwkSSOX1xYgj6j7h4czQh6R
         /TWGtyrM7ylBB2nJ1fPWQMC9KdC8vKrw50aql6EshC1LfBqOSqXNU1MT+w4V6wlEkyG/
         gC6F4ZBaGc0kKgpW+zFZ5ERGoYpVTc/YQ/aL04Qtb78XFxuWvjH/va/jrvEUiv/Ojd7+
         MDllfiVpUtuY5LlbZrN9dJJSHjDnwd8n5sWY3Ye+SOQZ75eU1QT5oK4wX0nKa9edB3iO
         KI+CLjlmF4LLP2Arjz99Mjlann32K1mM5CiajudMe+7fqG2FIKVuw5JT11GtvISBO/Uo
         lzOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K40aD2UJ6L74M+2trQ/No01gogZgqTtSmypd7Ck7L2g=;
        b=hxGjKEMaJBMSKp020D5wMzCpOFFXjZ+ZFlsan0HORp6BdzyiyFjnCppJB56zt3GlVP
         VZ/H5MhbOiOWUJfL6M9hc3HJod+gtyHC6KMbs423JTb3E0o0+pQ2J/N1uhq+KwTXHnfj
         Jv6i86o5gaaE8LEC+TtOc15aclcZ7xYss4bnGM7q9MZ7Agnj6aAnNRb+HiUzei1pX+YL
         mL7G7QPPTdqLb7eZ+gqnlxAOlaIDrl6qknBbxwS5oHadyRgVVGgBlJatTDgUyF2LpJq3
         MgKsUglCfjjTV1B5C2kRigaBfycePkLp+zTCsrJbegisQhYVvQvuV8V+XNzvRC+JE9zS
         /qqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QJhHMSSVxd/9AJTum/bFUWUgIY07834VICACQIm6Z9WsJQMcW
	hnULyGZ4aopRkhVOYXIB84U=
X-Google-Smtp-Source: ABdhPJzJCoXaLv9SJWsaqfaAIZvvPjsbOS1q7xMbooFT7F+3i3kmOtfJiXBRBMzDm+Qugd/QoMjaPg==
X-Received: by 2002:ac8:5bc2:: with SMTP id b2mr6129634qtb.98.1611953835618;
        Fri, 29 Jan 2021 12:57:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9163:: with SMTP id q90ls2571866qvq.1.gmail; Fri, 29 Jan
 2021 12:57:15 -0800 (PST)
X-Received: by 2002:a0c:83e1:: with SMTP id k88mr5642105qva.60.1611953835246;
        Fri, 29 Jan 2021 12:57:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611953835; cv=none;
        d=google.com; s=arc-20160816;
        b=OL15n/M1RN9pWzEjEKqPWfu3X9NqGEZB4/AlphQyIoHlRoZgV6rfD04buaDWCRmJaV
         NS6biynb3UunIKGd5uHAGbk/1gcXLoJXJwZQJtNuzW7e/l9Nv22uXKcQm+CqDPU84fRy
         Ge8DMFoboaHixUwRIV0lmROeijOXEFIHZTTJb1WKkF8jx9gLSyuXsyu8wt/RIDL6M5Cr
         CEIEY6Pl6qerAWDDepXHk5nHsZmeN3Ib7wguGw1ziRx5uFv89N0G5L37dC26w0odg7fY
         a8b0+xIZhorN5O75IkmszO/njTVrT3IZ5GFpwjuEVaoAvQv9Rolojej+tw9JX+aG2BIM
         xRMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jJAl8faLaTXKp5DstykPQouYkGkdmrA8uwwSrWLNEdw=;
        b=LwObzm38NJlYQeGAjjQZRARzi2dI9TzW4Vub5Fx3P10S64EZ0p92KeO1cOQXOEBNLM
         EKdlzyHjHtLTMDr0yjUtV7W3kXQrJuCMBDXTvA/dfEcCZqpjd7A2E+N6arAJu8H2FbRJ
         5VQDhj6cbL24Aja/hnLX5wggTTetYRsgZIBNWCWrzfKYV7XEoZl7FlkPNK6GifRB73Wy
         9QVs8jjZdd81i1r8VtQBfP7A5m/NEtyhfQPN8NfMMZ/2f0fflkVngTXh8qpHR90N10jr
         KG0fvtHapEc8MvMg4wQauH+xaplAl/TacvFbd1jaWlEgrxSN5ty4t5DD//ea1TwfIjjc
         ZqTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ni3/YpOQ";
       spf=pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id j40si968979qtk.2.2021.01.29.12.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:57:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-4jqVEabdM_mz1KST0Orp4A-1; Fri, 29 Jan 2021 15:57:11 -0500
X-MC-Unique: 4jqVEabdM_mz1KST0Orp4A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 047F1107ACE3;
	Fri, 29 Jan 2021 20:57:09 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-64.ams2.redhat.com [10.36.112.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BA7960BE2;
	Fri, 29 Jan 2021 20:57:08 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 10TKv4KA2368399
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 29 Jan 2021 21:57:05 +0100
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 10TKv2Kg2368396;
	Fri, 29 Jan 2021 21:57:02 +0100
Date: Fri, 29 Jan 2021 21:57:02 +0100
From: Jakub Jelinek <jakub@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>,
        Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>,
        Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
Message-ID: <20210129205702.GS4020736@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com>
 <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Ni3/YpOQ";
       spf=pass (google.com: domain of jakub@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
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

On Fri, Jan 29, 2021 at 12:48:11PM -0800, Nick Desaulniers wrote:
> > Should this be...?
> >
> > KBUILD_AFLAGS += -Wa,-gdwarf-5
> 
> No; under the set of conditions Clang is compiling .c to .S with DWARF
> v5 assembler directives. GAS will choke unless told -gdwarf-5 via
> -Wa,-gdwarf-5 for .c source files, hence it is a C flag, not an A

Wasn't that fixed in GAS?
https://sourceware.org/bugzilla/show_bug.cgi?id=27195

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129205702.GS4020736%40tucnak.
