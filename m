Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPPT3CFAMGQELCXQEEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D15441E3D6
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:27:10 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id i6-20020a056808030600b00276175dd3b9sf5236924oie.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:27:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633040829; cv=pass;
        d=google.com; s=arc-20160816;
        b=0p4BK28QiOs+QsA6hY7ZbmtxjnRoNME0EApCILkTeUXAXwb47tCcq1BwV3ITMdoh8+
         FOpQkFu+1ZA3HpY7qA66fkLU14PHZs0vBhSurgA+uP5nADLiDpB8NSH03wSg6ncmN33x
         VdCuF59Ddt7ujUUUB8Eo0yaV6r/a7+OVR1K2/+dLqjohaf0wBasDOi4pyePr89B8nEnc
         HgM9VONp5VUUJe0iqydcBLhDtHFW1jijiCObCryasuHZPM2PK2BIA1rWB+FDv9ScQVX0
         0vcyOiieTi42KehC4eFbggpb+bC9Fa2/B4ChAtdy+u9ws8tu2FuHTBXywjuE4NmM/yVW
         Gn7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=jPBg0Dlx5BxNP70VSDK725s5lkvA1CeQtn9hg1gc5hQ=;
        b=I9+RjXqQP09zI2X3Jk6WIsFClxoK3jzBIGO0j4aisDuTwqXRBJuw+yn2eqezpB7dn1
         SeT7uEjfTJ0Ybxu8lSa7hFgIZeTEFBTPDwOL0cAGdKx8vyIOLWBdZ/xIMMwA5QZNvdMh
         7Togti5dlFFIn+Ihz49GHZqEocGdDgSK2SxeqKL6Gs5UPZqTchApHIEap5X088mV01pc
         34lUBXLzo4IOEuX8FdbToI6VnoYLsUk4DDaRekSsBfOGqF4w4VHM1EvJogdEa8gBuRVw
         mOwtMzpKnYLT3TXdAIiLwdsErmD2UYko6WJ40Ovr2iynWkk60SHQmbgunjw7HbVfyIii
         vNiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jdF4+GGF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jPBg0Dlx5BxNP70VSDK725s5lkvA1CeQtn9hg1gc5hQ=;
        b=RPin7eLmhufmGbpAxCfel7KJVktsDiILqpgAYUo2MOZqe25szr7tHWEhUBgaDRF9qR
         LOsolch3egehz8x+aiObmVs5K4YLi7Fu0FtDXK5NHrVGzQFfqU6kErGurfb5g3EZDNId
         ghMhFdGU5Ftlypg3iIMUQQC5kEd0uBt4KcvHDJIzW9VNPKRzgoWGoWRKZC2+A5mKS1TJ
         OlueAoNna8bfJsAinWKoGZqj0gNb1uowXuciJvlvG7E/aZfdA/gVLEYEizRF+GwrmCSL
         Ntb30Oi0HUcjiyVpcoYBiFPIs4TgtE582++3W4vRp50KUyjdS9eUbFh2l1fy9fHnTnOr
         aGpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jPBg0Dlx5BxNP70VSDK725s5lkvA1CeQtn9hg1gc5hQ=;
        b=cTn6CtnwXRjZW3ACxuIurVfgMU757W3VqjAFUxbSlhS0/DJNr18Qi+GlWu8OX6GEJq
         qpFReKbudH4a8MMQNtKg7W/qj4D3HEgxJt6oepeB63VIcPFXttBRxmdbOqXcgk5jsu6u
         nkwEYctrSJ6wy1M0kmiUjlCPndKZJsihPUPpQBQLZRsVBG2AgT/8XsteCbsBFuvaKhG2
         dzQgr4OXZcLjTG/PA44DsqTPFBQxyCxJgAW5aU5BzVCHtw5rj36inO1Y/PYQC0FCbbS2
         VLlzzVTzbv6SxHh2pfcL/OUSrdOM1+BTKgyN+p9W00C4tVh3inSV+uPv08KhE9iPjwc1
         aylg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nQ9PW3sfGRRWagEPGgAbEC0qGfPXN3q9VnOdUU0YYoeogMMR7
	LiFYCB3LW+mOM2/6s04g5w4=
X-Google-Smtp-Source: ABdhPJwbqUDujrO7MrJ71E/qckgcAWwGk63qqzOTzog6QLMO8er5Eu+ffkdyfpQyRhRojiUKTd+FNg==
X-Received: by 2002:aca:ebd5:: with SMTP id j204mr1374300oih.14.1633040829214;
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a3:: with SMTP id 32ls2472461otm.2.gmail; Thu, 30 Sep
 2021 15:27:08 -0700 (PDT)
X-Received: by 2002:a9d:4c0c:: with SMTP id l12mr7328518otf.144.1633040828857;
        Thu, 30 Sep 2021 15:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633040828; cv=none;
        d=google.com; s=arc-20160816;
        b=ZwwT5A1keXwFJghBF5fPjmG06C+xx2FeXxdGdtNjxbly3TpzBg8Opv/jU+CNy5ozS8
         AG2NmUax/zPGcAb0Z4gfbgzPjy/HCedzpklV3oApekSw5P+nnZ/aFIl4xEB7FkMBYvP1
         E6XeyfguSgfhpG4ZG9rqRWcTM9i0jIkguRB9njmHKi1OQ70lFjpd9dclN5bqDQlIJK/p
         L/dVk+soU9JelJTMQTbHvgXX0GYHNUS9+WW+33JtS9UlsPyOsTFXOaGquM+yChdbU7Ki
         v5om98UpoBbqvs6NyaaN3JDK9anHpnf10qG731FtBf6la3Zjg3qGfP6WkodPKniRNgVU
         /nvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=36j5L3IXWBXJSa10uMT5uD6s/Y5u7bDApoWqfRj3glw=;
        b=vqh4zHtxC0g3TQHRBuN4deklqC9m8MhAC2xMZf5SN0X+PSeQT/E8Be2tCDc55ySkrG
         8GR0wsSkOm9WbT+OjaUQIyGNl6qTZ1WPXWkDsipaMQnFRkOkYVRA4ifpAiC5ycvtDGLL
         Ug9ycGT1AjWqn7gcfSHcYuhtqHHrdmKs1AWChIGd93Nz0YPP2G4TUlN2uDMWwpd+CrWR
         SGysEoggbSaDA2LbarrldAxvTRODOksZA3/mY/g0lus4n5gq/CJBS4ovs6CkzpbLiSkM
         fV+HQrHHnRKelGPt8o59OL2kln3VbAosd9ybuA0JDItFh10D3DeuCfbc0BFHfGV3YTUx
         72TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jdF4+GGF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id a9si192746oiw.5.2021.09.30.15.27.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id 66so7222131pgc.9
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:27:08 -0700 (PDT)
X-Received: by 2002:a63:1104:: with SMTP id g4mr6808034pgl.403.1633040828353;
        Thu, 30 Sep 2021 15:27:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w14sm4014005pge.40.2021.09.30.15.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 15:27:07 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
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
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 0/8] Add __alloc_size()
Date: Thu, 30 Sep 2021 15:26:56 -0700
Message-Id: <20210930222704.2631604-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2796; h=from:subject; bh=I3VSaYm9ezb7bHImNRkPHiAlz1ym/3eSqmSHHw7PzPc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhVjm2trNkLaQC+FMTfijdk1cGylQunUf+UbapBw2l aTY8uFmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYVY5tgAKCRCJcvTf3G3AJqQFD/ 9YSlk3PdAdtRBkTdXkwP8owLGfO+VnOq9vtRzRbsuSKa7C8/IvCCNxD16nC3XgUP+A3X9DeEeZpxtN KQQXav7b2c9MVVtP9HKO6AeJzfz0IEGECZ9KI+Om3wXz+qsFv+fZCWl4UmNQKT1vr+SDRyEINCKxGZ ExiIpojTRrbldN7lLHazXnka1vOiJ8O1zA8zi8fjhL2Lb+oj2/7/HUXzK7cOKdG/+FQ2ku14z+hnVT Fn3ErgRyIZxOuaCPtryDdLV7nNoSmxT9f9UFP2uWIZ5SU6gPOfEI7frcGyIm/IlMXNcdTBMhNK8UhY 65VQezKn/Uk3bD4JOquuWhail4ChaSiWz/h/rY5VbegnJrC66iy96m6zTOmFqmPpYjCsVCR2VFUWuf FrYMjVOEO36ewYrtLO1ZjP6c9/AahG4Z6Nq75Or9T9JLHKcvSP06DtEC4H/aApy80DQqKojn/TJSTV wuVss9nAR6pZniVZ32+7TIfb9VbNbz1q4KGxkgFn46pkNlb8s0h9x0X7mjw6QgnnSkvocacbtiOvx0 SQisQwgvoDLZYG9YIvVpGJxy8TeyCBmt6LLM0ecQmxk+H5Q6PwgQAH6s6Eg5ofM+TMmgIJwHsdN82F OuoVLbrzAV/9M48u+Nw5VdALC6BZmelf+t3IXv0xggKtQwplVG9fyn3dmBsQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jdF4+GGF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533
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

Hi Andrew,

This is a refresh of the __alloc_size series you have in -mm
currently. This addresses the issues[1] Linus had with attribute
location and the redundant use of __malloc. These are meant to replace
the following patches:

compiler-attributes-add-__alloc_size-for-better-bounds-checking.patch
compiler-attributes-add-__alloc_size-for-better-bounds-checking-fix.patch
checkpatch-add-__alloc_size-to-known-attribute.patch
slab-clean-up-function-declarations.patch
slab-add-__alloc_size-attributes-for-better-bounds-checking.patch
mm-page_alloc-add-__alloc_size-attributes-for-better-bounds-checking.patch
percpu-add-__alloc_size-attributes-for-better-bounds-checking.patch
mm-vmalloc-add-__alloc_size-attributes-for-better-bounds-checking.patch
rapidio-avoid-bogus-__alloc_size-warning.patch

Thanks!

-Kees

[1] https://lore.kernel.org/mm-commits/CAHk-=wgfbSyW6QYd5rmhSHRoOQ=ZvV+jLn1U8U4nBDgBuaOAjQ@mail.gmail.com/

v3:
- move attribute logic around to better handle GCC's weird behavior
- merge __malloc into the __alloc_size macro (Linus)
- refactor attribute positions (Linus)
v2: https://lore.kernel.org/lkml/20210818214021.2476230-1-keescook@chromium.org
v1: https://lore.kernel.org/lkml/20210818050841.2226600-1-keescook@chromium.org

Original cover letter:

GCC and Clang both use the "alloc_size" attribute to assist with bounds
checking around the use of allocation functions. Add the attribute,
adjust the Makefile to silence needless warnings, and add the hints to
the allocators where possible. These changes have been in use for a
while now in GrapheneOS.

Kees Cook (8):
  rapidio: Avoid bogus __alloc_size warning
  Compiler Attributes: add __alloc_size() for better bounds checking
  slab: Clean up function prototypes
  slab: Add __alloc_size attributes for better bounds checking
  mm/kvmalloc: Add __alloc_size attributes for better bounds checking
  mm/vmalloc: Add __alloc_size attributes for better bounds checking
  mm/page_alloc: Add __alloc_size attributes for better bounds checking
  percpu: Add __alloc_size attributes for better bounds checking

 Makefile                                 | 15 ++++
 drivers/rapidio/devices/rio_mport_cdev.c |  9 ++-
 include/linux/compiler-gcc.h             |  8 ++
 include/linux/compiler_attributes.h      | 10 +++
 include/linux/compiler_types.h           | 12 +++
 include/linux/gfp.h                      |  4 +-
 include/linux/mm.h                       | 16 ++--
 include/linux/percpu.h                   |  6 +-
 include/linux/slab.h                     | 99 +++++++++++++-----------
 include/linux/vmalloc.h                  | 22 +++---
 scripts/checkpatch.pl                    |  3 +-
 11 files changed, 128 insertions(+), 76 deletions(-)

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930222704.2631604-1-keescook%40chromium.org.
