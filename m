Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBWM52AAMGQEEE53O5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id A64C730ED94
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 08:45:11 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id o7sf1922885qtw.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 23:45:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612424710; cv=pass;
        d=google.com; s=arc-20160816;
        b=dKOUzeoATrovVQ1IqUlox3mY1cnb5iuv278elQh7l9wm9lOgfYqECYXjgZ+zwkF8cP
         5MypOfgDWBqaf8rWR21SNhe+NngL0balXC8x8WRYBahJ3qtbb57NAwU0SIGD+FbAQtjg
         bq+1yok2Ug+2rBUtWCQJlPd7XbUeH/X1kxDbYTfwofWEF7tiXkn0k3F6yOZqGy94kM6V
         V/IyIO4zg0BZaUNkQ3bAfCdQ8wzSaRg7CIppX+GEwc5OO1u5bkKErDRaotXEdUorAqhF
         SUg9B9lEKxG9XLbtPUNjEWH9lfkBhxhZhJ05lxnyDvWJM3r4KCC+2bc6cSyGB+HeL6rB
         Z/IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o52HswdTWd25lLsxok1piuH84T0PKHMcq2yj4SP7t0Q=;
        b=CK3juRp39AAFNDi3JAYYEbFvzX9tbFUQV26dDJku9eCkyBZAYdJY2b5a3R3lm+Y6OG
         V/Qt+FYB2udHuVWGWbP7FFLKzx85zv9vYDaCdDTCpvW57wa45kJ3AWHD9lZjb4GJZM61
         rfNQQwli0vp+HEFi0yZ1PL+5hf8PHlA2Jb0RlmBpvg7VLz28hlsgkUau3ErPtSc4T+k5
         ueSnQbyJ5pofhZ3hCWWsb7a90onGoKBbA6TthFjEMeRAIS9DiPfJC7tUs1r954qSQ4ah
         2WeWobFTKWJL50DToEBIRELYjC/RMOQxgI2DVvUk80jhHH7bckUxf7avLvKrSNB/ICok
         bS0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dEOb1Bs1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o52HswdTWd25lLsxok1piuH84T0PKHMcq2yj4SP7t0Q=;
        b=BTL0HN2rya37SO3cQ1g6qwYm5/OnEMtZcQjN3MeTVFvqQcqmry9mp+3S78vEVdWg4h
         8QIafPmkVCELn5r2cYpMI3Ij2+wM7FcHm5bY44wAw/wzPfe3psQh398btouJnNbO92VH
         ulJtUym6rzr+XFSC6J9kuH5WK+DL5V662x0WzNwQv5rZ9VJ8TfpGpUu2y/Y6x+D3e2Ox
         XZu8IoqIqDrIIp8Yo+3CBBBUNhwcSQE6AyZH/XJErVa1gNhJszxlrXB0kn5rdQfuCGAQ
         18fIlYZMaZDDBPRZa3F9l8JfhR//i0eHgjv/ZX7iVW0RWM3IFfbBStfTnSRRH8QeLojD
         mY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o52HswdTWd25lLsxok1piuH84T0PKHMcq2yj4SP7t0Q=;
        b=NBv2eNdtmTQj+eCirGQ8LshszBBkvKOgOUc/uaf4j9/c2GIjPXyDawwijraQnRu+dz
         13N+lOgc+fRYLsSjtnsA2IHGXPI9VbJov9JX4c7xUUJz7I4qGgoMPKMtFleFErj4+SRl
         KGMe2lwyE2Bwv4g5j3NWfNoTYv4q5Ehym42N3xgmJGCxLgHVPwzBIyiiZ3aOJ+6LCXh5
         uSSexccC43/6QZ7xVWrHMvStJ4woC8AQP0Zz/MrQI6QFUFgFaSV1EkQvJVnrjMPpmD4B
         ZjPYmGuOGVa2Uc1lRJCmdcNsxU5nAsra9xmqGWyow3vND2VkOz6ERmKsEjHdrm0T06f7
         Mtzg==
X-Gm-Message-State: AOAM5323S0B90eWogQNegbTZABwmoeYCbWt0XdTem2rLAt/+dopuTwoj
	p7FI9VHEIn2P4JnQ4RXleeY=
X-Google-Smtp-Source: ABdhPJxI4xlNpHpkRd5gj+UJI9iXt+E4joZn5oq8Sn2KFuKZ0Q9saN0PQHq+xuV0McmmQQCfrjOYaA==
X-Received: by 2002:a0c:c390:: with SMTP id o16mr6539331qvi.14.1612424710619;
        Wed, 03 Feb 2021 23:45:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e88:: with SMTP id 130ls2629699qko.0.gmail; Wed, 03 Feb
 2021 23:45:10 -0800 (PST)
X-Received: by 2002:a37:a9c8:: with SMTP id s191mr6391018qke.68.1612424710328;
        Wed, 03 Feb 2021 23:45:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612424710; cv=none;
        d=google.com; s=arc-20160816;
        b=tbhUlx4jLuWDelx0HyQOT6cH9wUuJyjRbBQ7dMJ5sHnNe3cHLOhX0iXmHIqOflUPO0
         dx7VrOOt1nZ/DjrNWI/VENZvSoAbT1RBDbnKZ2BmT5j+pGaNlDOR0rVX23gkXB0wHL82
         PLd1YmUkpfQut0T5dDiBd1tP+tPqnTVJ9SE2evGPQt39etGklhUkHLNmo5pqtd5PvaU+
         wd5AdDUb1y0PJMSlxMrz9XYFdjaKktUxaqOtVzK2+zxVpaYI8VQKXNff6SOX38ytRK87
         DY2qoVCkUEqeeWYi83MJLLjJebdPA5ECgTqV+rKkuFZ5mJGqjbM/Cl8YDbSPocNSJqw7
         BKHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lgxkPUBlJj+m7PzcHNu0RuzFBoZ+BL1D5oU26v/3jtc=;
        b=rniHD4A8Osz9ji/nQ54Jq64zjq19k9Y4W2l94RWAvFB0qbvTfSyjGXIJh33Nt+gq2p
         8tueG1IDKqhe5gKn5ZTcHnVY9bcok0EZ0fOaLNNRKhvwxa3c9I2BGRb7OFoIFiJrjMnK
         N/WU5KrJEtfHK2l95ZOvkIX0P4pS4MMU0AH/wOuLh+eEQyPJFIVqU8ZL47S4XBaEqqF2
         5tnOZb0oQtoyUCLu8i86vYiBnlRbW4/XhLF8TTJ2fbmBRchUms4CR5cEe8dlhawhbu57
         hUFWEpWEilPzaJMJK3w+DGszYwWC2XvMQYIYxNKdGAxyq/LixAn1JyzPGdDBc/Qf2RZl
         lgUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dEOb1Bs1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id p6si237817qti.1.2021.02.03.23.45.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 23:45:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id x9so1314127plb.5
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 23:45:10 -0800 (PST)
X-Received: by 2002:a17:90a:bf10:: with SMTP id c16mr7104915pjs.101.1612424709320;
 Wed, 03 Feb 2021 23:45:09 -0800 (PST)
MIME-Version: 1.0
References: <20210204064037.1281726-1-ndesaulniers@google.com> <CA+icZUVVcP5MSUSDM18Wab46n-20eskRE59akdwfxXKpKXDOFg@mail.gmail.com>
In-Reply-To: <CA+icZUVVcP5MSUSDM18Wab46n-20eskRE59akdwfxXKpKXDOFg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 23:44:56 -0800
Message-ID: <CAKwvOdkYkgViVfzAn1J+SoSfzWn4aYVi+O3uwHhTsV92CVEeJQ@mail.gmail.com>
Subject: Re: [PATCH v8 0/2] Kbuild: DWARF v5 support
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Chris Murphy <bugzilla@colorremedies.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dEOb1Bs1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Feb 3, 2021 at 10:58 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> I guess I need to test harder to get a Tested-by credit :-)?

You're right Sedat, I'm sorry.  Your testing is invaluable; thank you
for taking the time to help and credit is a powerful incentive.

It can be difficult to know whether to carry forward tags or not when
a patch is revised.

Keeping track whether someone sent an explicit Tested By vs including
it based on feedback that implied they tried it.  If you've tested v7
or v8, please reply explicitly with tested by tags, or perhaps
Masahiro can apply those for you.

It can be difficult to know what's broken if you apply too many out of
tree patches though.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkYkgViVfzAn1J%2BSoSfzWn4aYVi%2BO3uwHhTsV92CVEeJQ%40mail.gmail.com.
