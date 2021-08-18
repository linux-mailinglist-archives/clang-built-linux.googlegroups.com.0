Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWX46WEAMGQEZUB3U3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E8D3F0D86
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:43 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id f1-20020a5edf01000000b005b85593f933sf2004534ioq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:40:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629322842; cv=pass;
        d=google.com; s=arc-20160816;
        b=ytzA50IwwPyVRGu3IFkJB9StjvH5cTp+Y3c66yJ3La10euQ1SNSQY0ioh+3+zJyHGq
         qdGi0DnruVI+0UahEoiQ0qOQDKFQQG+GnC5ozPz0zA9Uk/f45q4xmryrhx6wmr9BR+8q
         hoRk7E9DhgsslzT763j9hPXh9PI8AB0c+Y+u+DCBavEykbunLdxy16/MQbpMlQL7S1GZ
         3OdshyU/15SF3C5IlL8/uYxw8jPvEdGC/rwh9xBvoHKTw6qHwvPm5cbsvjmoBL2NiOkJ
         nYPaBfyk0RFEdAwsa7lhzGrl+xznHa7Hyhn7gEljpMwZsQW7tHJt10z/51HGzcdpIxwc
         4eZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+BPvYXtZTWjf0ioqvn9ou1dDd+A/ezQ3kzevgZ7dztQ=;
        b=G4CaNjZwpF+H+owaNg7P2P31Xa39RcPXdCcWV3B8ZXw3oMaELdvZakDkyovGB4T/YJ
         xY8EMGJ1iWoQiIo4YZV+ss120iGmjojxG2Rg1TtMeDBSTIbMMMMl2p7Jke0b1Ow0e94l
         JValmbgNpC/piRlUz89y1jwgcbA5ROqDU4clV1U3N4CfYvaf92J4ZoKVIf7Yh4Awh90h
         h25lwMoKbytKRR6TDHw1n3bkcWzwe2UE0XmwHQGJIFF3dcVDOpz5/gJl1/ZNxijxkBVZ
         XoBKLIj+nDJA91smzXXEh4B8jFsrY9FG8JH2XiHfdjQ4zoT378Yoc9Mu5Oa1o8S9lzt4
         o6xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RSJ0nHFz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+BPvYXtZTWjf0ioqvn9ou1dDd+A/ezQ3kzevgZ7dztQ=;
        b=QRrT/ZDzwx8KdZ2GETLX5emEUW1HEMs4/5OPpZ9lfgARRr02yMoODTmuAB8XCDWhVJ
         dM4YjxyKCAWeYVTbfmzN8iyZtNB+ZzDe2FqJVvQImZToRUAa1U116r6E8VK3gmrCngJr
         Ff6E8v1GjVkMuscR2ibYA22AY9sdiQ658c+k2PpixXJjX+DPpB+WmytWeevJTIwwyQuq
         da0SPstsa8pe2AIwCoUXX6LqKiPiTn1SRGn/PgT9lcVlFfkWu2YLC+NLlz5yt8MRx9rt
         HVudt/hSQQ5oGZoS54nWexo1UK+axIuqEEEhdO6hCP8/vBtUhXVZ0WF9AOZfMVGKrLA1
         QW0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+BPvYXtZTWjf0ioqvn9ou1dDd+A/ezQ3kzevgZ7dztQ=;
        b=aAovYrefoY7Ze9Yw1KruI7NCyczD+P4NN96qvlLtNn+XrUXpEJRrYyZ/ZH53o4BAaA
         SP9bqnGmBzPTKO4kLaHNcqBwmRH7O8slNwVtV74fHnXx/dFp5PLYHC7S77Br9m3HZ4do
         d2Okh5PyzMBtAfID3sjIiu4g1QFUT5qNcElmoJtx4OoeYy2YruaRGTh8K3oZ2W7DmzPx
         mxNL9MboBCMrxOtpyRfp/edakPVtn7byLYaiDpOaM93scQ/XUykhD4UjpRsXtC9QekJU
         +MxSC2lWss0+nDlfsaq5STy0oLQyCLDJ49bnh+R9i7+KSdbeBz0DNL3h2eT64zpZA3gf
         RAcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AATVTJQhJseiYjlTK4sRUtdD/dKIswOzVTOFrWHF35foQNiss
	sFMGT2i/zAW9J9lscIW0I4o=
X-Google-Smtp-Source: ABdhPJwEnFrzdfsgEGTyP41a7IAJSsIVhoPVDbHKC97dKFpUg2ahc31kwp003TSgHWeE29/FoGWzxQ==
X-Received: by 2002:a05:6e02:1888:: with SMTP id o8mr7406130ilu.124.1629322842293;
        Wed, 18 Aug 2021 14:40:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ca8c:: with SMTP id t12ls521152ilo.7.gmail; Wed, 18 Aug
 2021 14:40:42 -0700 (PDT)
X-Received: by 2002:a92:6802:: with SMTP id d2mr7320122ilc.40.1629322841971;
        Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629322841; cv=none;
        d=google.com; s=arc-20160816;
        b=d/LbC+QPToCcvghNixKyqPxSmI45rI2y4Tc2boxq6a2VcmLdyAUiyR5zX4BM+uNdU2
         Ws/AbPdnVER1O4SWKGLfvsOPWRBdynOC2nXS3fP3TiWAeMoOx+4YcVO/HGRWbzpiupzc
         ++Ecc/pLOWdmsEkC/iUTsL0GTasiI431Fx3i6QbHkYHho0J+9WwSAxIQ6KfgUwAuT5Jm
         nszYlVVT8m1ntxWlRS1AOjPjyqlks3AtsfmgqBbiQdt7I81QoXLMaI9LAwvtp9P25j5/
         CzXT0l2H3ZO+qO6hIzZ3Im3xbrRoxurSnNBeyv/eonAoVX4psv+dHKBrkCEdldHkGqCz
         KJ5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hkb7Jfu8siQEeZroFh7P2leDv5HZhgyEO3/P7zQyv7o=;
        b=oSFfKeQqaFUd+xb/zsW+r2KnI8eQ1Bso0IGrTGnhLagi7q3awMc2ZHir5LrQGOj79l
         4jWBIEfa7Qs069nMTozUdsvvGYIUUUenHnXp0vPQMYZMm9DbthelZl9e0HhQSYuWfHKR
         r02GGnuNsk9Qw2H5MQmbLEEAzvyrAtDePQmvARyajUIQ5Ro+0DehwV0jYxKfE9PEbwl+
         WUYL/G8lbMSK8LWW/DxgkVILP38y3cMpdrILxuGck359c6bXGWw+zv3F76FhNum8FD4m
         7ksizN9GerdoeU/Fj7kZ628np4HjHqhmQKD60Qcsi5IJlTABCyiis1hmRsbhZe4ep1RX
         Z2fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RSJ0nHFz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id z12si105136iox.0.2021.08.18.14.40.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso3356958pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
X-Received: by 2002:a17:902:e54e:b0:12d:cca1:2c1f with SMTP id n14-20020a170902e54e00b0012dcca12c1fmr8778762plf.79.1629322841388;
        Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p30sm771381pfh.116.2021.08.18.14.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:40:39 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>,
	linux-mm@kvack.org,
	Joe Perches <joe@perches.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 6/7] percpu: Add __alloc_size attributes for better bounds checking
Date: Wed, 18 Aug 2021 14:40:20 -0700
Message-Id: <20210818214021.2476230-7-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818214021.2476230-1-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1590; h=from:subject; bh=ekTvmEitMMQysLPDeBX8i89VfgDCF2rtfdT6Z6IUx4A=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHX5EsqlEW2vfPq2eFmV43wt3rhdXc8JsXzXAcFu/ K19rrryJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYR1+RAAKCRCJcvTf3G3AJuxtD/ 9NUGRG0V5AKk7qevvbKJ8t28yDZ6RZ0La8S1XLLAg61jPfECQvj6pVLv5NrDYtQMSbnwdh77FUg+II vLCH66LG8N2MwxQgbX7gtAfkcv2VV1dChGUbDODhzCKYU1ggZbOz55qV09DiWOCHE04y5LSlABcay2 1Di10cEmBP3LyrcM45UIOvl3fbc5iewqMqz/g2BZSmbGC0jJG1QjOvQezGZvid6TmQozA6VJ7oUJTA yQQ3KaPMNrueSUKmqwe/B5/sBXvgGM1hOSVjuZNFgLeL2Eb4qMJnukSGWxaIHY8JYpT1kMog9OOfD4 ngnPNYTprHzGVHq8wPzJOcfaQ9ZBKsSRM9Sn6mpGfrpqF8+WRID4zn/Vdcz2m8k3AEgPaTs3DWOhq5 9VYp9XI5i5dvtDnlooedZt4ux8Bdv6+JD8e8zwBf+w7uONbj0PU4iq2Kax/B1F8tDOvHyflWvwlQxb nd5XW7tez+VJqv0r+Vi5cyZ9Z4txtiC3cepvO5YiFD/vsyFKB59HnScAAvwClZTYHb+u8xWLrElSDk t8qKonk8l3+uGZueDC8sHGMVtV+lqxYbD10EMx46FGmrtbEBZT/shTf8vQllIDghYvHfEzL9ymZtxG jGGWnPlILGujzSofOTeKoJvJHLxS+LelzhTaK2IdytAHBhi4QsOwxZZNtx8g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RSJ0nHFz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

As already done in GrapheneOS, add the __alloc_size attribute for
appropriate percpu allocator interfaces, to provide additional hinting
for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
compiler optimizations.

Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Cc: Dennis Zhou <dennis@kernel.org>
Cc: Tejun Heo <tj@kernel.org>
Cc: Christoph Lameter <cl@linux.com>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/percpu.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/percpu.h b/include/linux/percpu.h
index 5e76af742c80..119f41815b32 100644
--- a/include/linux/percpu.h
+++ b/include/linux/percpu.h
@@ -123,6 +123,7 @@ extern int __init pcpu_page_first_chunk(size_t reserved_size,
 				pcpu_fc_populate_pte_fn_t populate_pte_fn);
 #endif
 
+__alloc_size(1)
 extern void __percpu *__alloc_reserved_percpu(size_t size, size_t align);
 extern bool __is_kernel_percpu_address(unsigned long addr, unsigned long *can_addr);
 extern bool is_kernel_percpu_address(unsigned long addr);
@@ -131,7 +132,9 @@ extern bool is_kernel_percpu_address(unsigned long addr);
 extern void __init setup_per_cpu_areas(void);
 #endif
 
+__alloc_size(1)
 extern void __percpu *__alloc_percpu_gfp(size_t size, size_t align, gfp_t gfp);
+__alloc_size(1)
 extern void __percpu *__alloc_percpu(size_t size, size_t align);
 extern void free_percpu(void __percpu *__pdata);
 extern phys_addr_t per_cpu_ptr_to_phys(void *addr);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818214021.2476230-7-keescook%40chromium.org.
