Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVX46WEAMGQEU5KKYOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C87E23F0D7E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:39 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id y185-20020a3764c20000b02903d2c78226cesf2724194qkb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:40:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629322838; cv=pass;
        d=google.com; s=arc-20160816;
        b=za61pvJKBmHS50noP6b/GCuoZ3vwGiq5rZy1thYAImrfPMho3flFQW3YMffbcStlND
         tmQVUOwnM1VTWGhBa7l8cCcedonFwGs7t2YKVF+vNI+P4y0jLQsQluD0QOuMKEeVCpdu
         wxgdqdHobXlUZSXbJE5v9g4lY6rTf6ejkq+DG68AK7RoPGrxpEi/U50HCHQTQbz0lowd
         0kzSxMw3si7L8WgwUzfYvONHD7dUj1X4ikSHTkSnYTKGWUR1m5z5Qt8FiO0jEPEcBJui
         mWR8ieGJ6F905WEWtGuvhHYiC6GaM9MJ9fnB9rzxgShFgSzuCcChraRO4lReLNDT4F1d
         0tQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=lVHC5V8rdw/XyahQZC/UezL3lTJhnFKlC4NQ0ZYylRw=;
        b=OM0bkLAhZr5BV4tE1RbxG1SGZzf5WPBWLrBKruyjlpFSA59MxxthSt9Onw7F0mnjIE
         kZR/HzIlV1IB6KgF9pnwCkV8NkLFGMeFeOC5emAX1V/Zr0Z1HVS8UxUnvxCsFhAwU6CT
         iA6G35G5vbCqfyvGp/VqBHNtlQ0/hoXPhoJD9fVWZpK1dTbQKiwVUAeCiKTKRPYiyqe9
         sWF0cZsj0DDf3cWfLIB4Knfiy7uri9YSoVz/1jFzpd0SP7z4TkszuN3ZOFwyIveC4UnX
         GWjHUj4mXdXdObVFOUNYu3yBq9FvsSkOZ/HOdqwGsLQqYG/3owlrI/pjqp/CgRntTBKr
         l45w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a8rtLFTu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lVHC5V8rdw/XyahQZC/UezL3lTJhnFKlC4NQ0ZYylRw=;
        b=itYZ/mqrWbHMcUeqRAxcLbO2OZmhAnsV6rjUW94CO3YIRNPqTWSHbsku6KHJbVP9PZ
         a9bM/2PnjzWA6PgwTY9h/k1W1QvJx8aFK1zIG+6SPP/EAmUL+Z2kDRXqhhRBMwOESkdI
         kLNevMLUKrp0+nRkrcp3W+68wXtOXvQiymwjaIr1RKjYHuceFRT99SimjJ/ki0qfQmiZ
         fJp2uSS5oCVPTZhayQ7aV6r+qCxlNlPguzFI03Y6vYBj80zckb6nhxEyfNAv61j7INhK
         4eQYcCJYG4xj9G8NPrGdi/nYBjAJLuFO3EHq4Qx+nVlu5m7IAZJOumwQQZfx6CvoUMXm
         2OPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lVHC5V8rdw/XyahQZC/UezL3lTJhnFKlC4NQ0ZYylRw=;
        b=DyfLNX1pAdmUs5QFo/d/Zc7SOaweeIKVInkMOpxU3LFbKv8Xx5pD2bzn+Ikq4H9AUc
         NHMbdB+AutqO1KP0gd2oVrUYY4L86qjndBgNBvG6M8qNB+tB1wkLaForCh64DZayQITO
         7Zzb6PAx0TOP1EGA+r5hsN0dNY9OLqowVmEbugJ6pE9utiI0MW4+3DY7ZKmZ4j0/VIb3
         o+KshhsSp9MJxY7y1rmm4XwFq0uWmGg0i5dBPLMf7ZG4CJFGWKuVp3IstqXhq6JTng/b
         N/FvHcFaSRB4+ijsNmKABCs9qwarfs5cnnLEEbURZ3nz7j6i44z6Sid31P3I2CP+xFMH
         J9zA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HSjIFurzrrSmYcNwegjWyLeyAY1WyZxD5bsSAXw7dhJYCM+7S
	IcoK2NKngrhMnssf4x2KXUk=
X-Google-Smtp-Source: ABdhPJzy92/NhyeSqvmkdVxae6/XE5l9EiboGa83TBrQcDJ2byNi+i7BXr0s6tUsz9jOphPn6MAYvw==
X-Received: by 2002:a05:6214:4009:: with SMTP id kd9mr11128017qvb.40.1629322838583;
        Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ffd1:: with SMTP id h17ls207298qvv.2.gmail; Wed, 18 Aug
 2021 14:40:38 -0700 (PDT)
X-Received: by 2002:ad4:5bc8:: with SMTP id t8mr10797734qvt.18.1629322838194;
        Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629322838; cv=none;
        d=google.com; s=arc-20160816;
        b=DA+Um+vZ5eHasMPsFq/NJYqpp1GayxeMIW7tyxTwj7u4/Zb/vQxSQix0nC30O7Wcmk
         cNfo9f7JcO7veDiiMqbkxT+pOcwmVJjtiHLZx+YTFSjcVhOcrHpFC56CiEXWhuEWYk5g
         8Er9DBGTvE62PMIV9szjR+aWPfLP5v0XRmA+RVDUklV7gmnYIAFb0nfnaAgfrNtZ6oU6
         jGHOV74dSc0+fCgU4OKiLH64LYv+CEJZgGTFBepAw284scc1pfBJThe3mskByJzT1WzC
         BrZJjW1StWAj4NLfMPZiMUX2lwdN6Y1xBKBL0HwLZkt8+O9+4zE2UOzb5qE4B7Y34+HR
         oZlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=akAmUlIHVyMCnIAEIuPla2RgaGumEDghjwfRk7fePO8=;
        b=LclNY9o4yRvf3kcpb9MZur8u0lQ+A12PmvM2ja6B+SB2R/rEXK4tUzyqrqElr2U/RP
         A2nIPrcT0Ti/dKkRMTIU3CCJ426mK/A2kUHHoUCUwVbSAAJtdT3COxvzbeF04GT+Lhdy
         A3012wFt+D4YQyr56TbU6qngIbaDyT6mrjtZZN4ZTP4/GNIaHng77vuO3hlSGLNw3FdI
         N+yPxjGETC82QqfsyEKLgenOS4B6H0dNcoKpYW5JOiifQJxZ+ujj7SqGEp2ec6ZX95Dr
         VCQm4EMrVFiZPLzyh0UI3KSGeHabMV9Dc/sxLVYA+3GvgQJaggen4zjRtzXWOfReJFbM
         5oBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a8rtLFTu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id f13si63179qko.2.2021.08.18.14.40.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id u1so2714102plr.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
X-Received: by 2002:a17:90a:c7cc:: with SMTP id gf12mr11236442pjb.152.1629322837839;
        Wed, 18 Aug 2021 14:40:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u16sm833047pgh.53.2021.08.18.14.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:40:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Joe Perches <joe@perches.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 0/7] Add __alloc_size() for better bounds checking
Date: Wed, 18 Aug 2021 14:40:14 -0700
Message-Id: <20210818214021.2476230-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1862; h=from:subject; bh=rsMgLXm/8j8zp3cC9QOAG2syHyng6bO/WmNVEexJxdo=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHX5CJ/SlNYpWE0Ykxq+PzeUKRG1gC/093Z7fxOqZ wEYXCCiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYR1+QgAKCRCJcvTf3G3AJo3AEA CRpUXhzKUXa83bU08HMYk8w3CI0lPzuD6WVd7f8zuaswtTFfH/Hhf0jvPMTmoC6K5Pd8AE87/wBmUH movYpOXkti6rw/ORur3peVR7FtzjxTcbY+KfjktIU9xbLcdj1GyKNr/ZnXqH4tiGuIYzl7+QIgC1pl Z26pG54aUxZVwgdaBgr3YBwyn9zwNcNlth7UdxDilgHrFB6xeEGdbCwSirgpnboJrVjpve3lDgwjH4 Q6zPPWan82zmnP0HbY/T6brScwp5MpHW3UhTzdcfUfBNxmjfhIQHAhoVcXGlJUyBbHnrINSOv75H3y 6F0wiCpckheLpTgrio85Ydq4S0Et/JtOpejeclbEYhrqe/2D6urk8FEqBKHf7rC7uFlINsuc8z11PS S6WF29dvRToPp4kvE45ge5eIdj24peW4NzGhCGDXPhraGd8tFxLV4F9Vq8g4F2UdbnqkGhN6HNs5OG Te+aSJseJhr+FaAANM8fvXBQzTjM4RGQeFtDwvcWU2zPq5bx3bJCaNTOHnyjGZ/KNS0rxGw8JeqBHF CO8EYPvzIhHVVUT0lebK+o9O0vanvKwUKcy1h1eR8DRx4bK7g8c91Hm59872I8zDPjw1ovaybRAzrv 7Nul/uQgIzzglOXzFM5EZix4zg1+ua3rV5n79ekbMFaagG9uz9kIWkTK2sGA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=a8rtLFTu;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

Hi,

GCC and Clang both use the "alloc_size" attribute to assist with bounds
checking around the use of allocation functions. Add the attribute,
adjust the Makefile to silence needless warnings, and add the hints to
the allocators where possible. These changes have been in use for a
while now in GrapheneOS.

To build without warnings, this series needs a couple small fixes for
allmodconfig, which I sent separately:
https://lore.kernel.org/lkml/20210818174855.2307828-5-keescook@chromium.org/
https://lore.kernel.org/lkml/20210818044252.1533634-1-keescook@chromium.org/
https://lore.kernel.org/lkml/20210818043912.1466447-1-keescook@chromium.org/

I figure I can take this via my "overflow" series, or it could go via
-mm?

-Kees

v2:
- clean up slab function declarations (joe)
- update checkpatch.pl attribute regex (joe)
- explain the Makefile changes better (ojeda, nathan)
v1: https://lore.kernel.org/lkml/20210818050841.2226600-1-keescook@chromium.org

Kees Cook (7):
  Compiler Attributes: Add __alloc_size() for better bounds checking
  checkpatch: Add __alloc_size() to known $Attribute
  slab: Clean up function declarations
  slab: Add __alloc_size attributes for better bounds checking
  mm/page_alloc: Add __alloc_size attributes for better bounds checking
  percpu: Add __alloc_size attributes for better bounds checking
  mm/vmalloc: Add __alloc_size attributes for better bounds checking

 Makefile                            |  6 ++-
 include/linux/compiler_attributes.h |  6 +++
 include/linux/gfp.h                 |  2 +
 include/linux/percpu.h              |  3 ++
 include/linux/slab.h                | 84 +++++++++++++++++------------
 include/linux/vmalloc.h             | 11 ++++
 scripts/checkpatch.pl               |  3 +-
 7 files changed, 80 insertions(+), 35 deletions(-)

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818214021.2476230-1-keescook%40chromium.org.
