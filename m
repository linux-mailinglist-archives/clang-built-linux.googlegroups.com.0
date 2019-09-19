Return-Path: <clang-built-linux+bncBCTKBXOHZ4HBB7G6RXWAKGQES7GJPEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B612B78E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 14:07:25 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id j10sf931486lja.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 05:07:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568894844; cv=pass;
        d=google.com; s=arc-20160816;
        b=B3GUlQ3nz+CoryM3XW9ciukqflAxgNr8kv2MpALmE8Pa4gW3shJVJVQPvLZG5uNGoA
         zsCVi7JN9KNdRqIerUe+9Db3lDOGyr6QPWdkb70ZxSjgQEyShUx+MMUOFJymPX2JtNEn
         wm6UfUFv338LrI9cLHI+JKJJmoaaaE91Gks7DLhsT3h/qIapEE8azmrz5Np9MeusRSMS
         MmZgGndVf3HEoWBjql2kfL6Y5HXaHj+WpiIqEM+95MQoNLlvIg/HiyUumu8OTBFHSfr8
         j1klGqGsGfEg383zFqm5QnlOGknBDJjFusWvmSPCVitYa05jDBeJ58AO732EPFagZ1Cv
         iR+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dpSl8F/byThBLpWc+0MfFFGfTOeIkdYAcDYK7P3XvrE=;
        b=uSkIs6zjtRp7q7p263vtPNj/4Y4bV82pW/HNjchAiAznD3+QJcHXItF0UgF3eE64Tp
         mQCFD3QXHbGFdk8CCB8XvXXhaf5vQWR2QFsQXS3c7CsTZe0LbUJ/k1X3Iwp1qsWnwoTL
         IcU/apTEkTqmypSSeUclWY1oeGU6KQiWOtN4hW1LoLJbkbfUGkH2jKBJj8EV+wxRO3HB
         931RDWBsnsmLxosqQUQWQ0DO7vp8y9qmUUtcX2EHxb1ngaQehoLErGkmB/YLOuxZC5Gp
         sp+4iWisPHDCcQpRmXshCJuCfhh6cVRpAkDY9cLijb5Q5OhmSGT9TJGbKR5HKHjE5qbZ
         naCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning dave@stgolabs.net does not designate 195.135.220.15 as permitted sender) smtp.mailfrom=dave@stgolabs.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpSl8F/byThBLpWc+0MfFFGfTOeIkdYAcDYK7P3XvrE=;
        b=ED/5jffK/JXIz8nGtz8izbpR7FDE8/sjt+e+7RE5T9o+ydrRF7yAthofEXBBlg64g2
         06FRDHJTLRZgx29v3QfDyese37fHR4pwUwom/AkWaAlHyYjcniQS+/8m95CbBBVXpH8q
         QTXtlBJ0UJ8mW/GWscdWTfzUVZWeouzfRL1eDi9txJlp8czu3GhypflmvQa0UBXv7jh9
         EcKr+Jqd3oxCh/6zGBd+mTZcIRQ6UB4bvJaCGnmS2EFAEPqF2NRr4Q1lI0Ml/7ZIaM+9
         TFC9ydPatDgr7YKRkgHsJNIN/uP92XYXNbu07GY7+RPG1j4Y+bqe4x0QcVLgS8cOZgW+
         S59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpSl8F/byThBLpWc+0MfFFGfTOeIkdYAcDYK7P3XvrE=;
        b=UM3g0GT4eKKxSO10QOTeR/HDb+ARKbY/LSuGPO+YG8XZXEFE2tRTOqY6UDjwofxjuJ
         ET/GDHGYQEhl1mBDZvxT90RX2IWMREHvCNaRe8+T3TvpmV2S2Snjir8+szxHutOv+Z1i
         2fcWVrzCj6LjTT1A4rO9fTD4R/hYns5bd4sBLLpPsps2UNVXcRUXJ6PZ2L1PApPfcprc
         BVqC3kTG1AxPgfGe/C4DDlHeUhNbWiBd8h9bLdhiX2cva0GYyBnRKRzUFCBocUPtK0UA
         RBF0eRhS8m98adJ9Jg8t0pfdLG65v6bPgKuNnGy4X+oR7LAM88f6yYGc3LRgsx7qUpAS
         BN8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXA9afuznod3np/VIH3BAD9ECveQvmSbCL86fi5NkwyLVqoJchB
	Wr8y0YUuyvYwh02JWQjcX9k=
X-Google-Smtp-Source: APXvYqwjfqTbwf34VLKm2Wu5Nzjl6p91SJl4TsIqpZjES/BXIgqkVuJdA7LxBS1JMfdD4sfgkoWAgg==
X-Received: by 2002:a2e:3201:: with SMTP id y1mr5249694ljy.5.1568894844832;
        Thu, 19 Sep 2019 05:07:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9446:: with SMTP id o6ls509278ljh.10.gmail; Thu, 19 Sep
 2019 05:07:24 -0700 (PDT)
X-Received: by 2002:a2e:9708:: with SMTP id r8mr5183383lji.58.1568894844228;
        Thu, 19 Sep 2019 05:07:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568894844; cv=none;
        d=google.com; s=arc-20160816;
        b=a8q5LEDLVP5/eR+IQLtDSYdVkdH49vv19b/PtBVUYjDTBfi3LXCmi27M2VXZJuB2cK
         tcFU/Rw3ZQDh3L3WNiz4LBBe1NbI5d2h/yg6pERVRqwkISAUD0xxU1zrZjMnEhad2F5o
         LjX8aAA6zOBYMD5+3eZ+9MO8T8X6EumcT203IFdStWYDP3IBhC8tTQRu33a3NmI/EkLK
         +xpi7LmW6QnEUJ4dV1Sx8FKoYpDHN0th9OcSdMWUY8PPtUYPPi/SPl060OeYEg6jJ4dz
         ktwIBEP5zpOK3PbPEvyR+sF/rkxi5vgLvdrL7vxPPI5CzqpHy1meORX8PRcXm7P/lgRl
         CSdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date;
        bh=xeA+ccCll4CrCDKyKs2KjkM7fZ98PTuEfq4TkVgy57A=;
        b=OGsjrD511SQ9Ss0Bdu/gP1GNHIysdKV1n9GpRQVA3mBcKfu138Fth/89fbAdazxQ0b
         /PLWnMsJvdfSG/ZeuX+cvj4Y3hJgVpJtj6rwVPlbxA9oL7XRC/cAMuKopMiGK8zpwpD/
         W68UB8ANlLSK1VN4d5uA8Caex4OSPuxoEdvinv9AiMfASgTm7xWj8B+W/C5y+83B2dAq
         Vglh9ymO+dbUhXN8uulHTQ6nLUTWeZ/Etm5tde/doJaM7Ke7fTWaQjnR2ZrHbS1sudy3
         xQwvKV370mPvpr7jHDPIzU+khKSx8WFsGneZ4ZBSoSq5tFTbosnJKx1RIQZ524At97CB
         rPCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning dave@stgolabs.net does not designate 195.135.220.15 as permitted sender) smtp.mailfrom=dave@stgolabs.net
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id e8si490323ljo.4.2019.09.19.05.07.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Sep 2019 05:07:23 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning dave@stgolabs.net does not designate 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id AD906AB9B;
	Thu, 19 Sep 2019 12:07:22 +0000 (UTC)
Date: Thu, 19 Sep 2019 05:07:03 -0700
From: Davidlohr Bueso <dave@stgolabs.net>
To: Mike Kravetz <mike.kravetz@oracle.com>
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	David Bolvansky <david.bolvansky@gmail.com>
Subject: Re: [PATCH] hugetlbfs: hugetlb_fault_mutex_hash cleanup
Message-ID: <20190919120703.ixuv2itnui5ofhhr@linux-p48b>
Mail-Followup-To: Mike Kravetz <mike.kravetz@oracle.com>,
	linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	David Bolvansky <david.bolvansky@gmail.com>
References: <20190919011847.18400-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190919011847.18400-1-mike.kravetz@oracle.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: dave@stgolabs.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning dave@stgolabs.net does not designate
 195.135.220.15 as permitted sender) smtp.mailfrom=dave@stgolabs.net
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

On Wed, 18 Sep 2019, Mike Kravetz wrote:

>A new clang diagnostic (-Wsizeof-array-div) warns about the calculation
>to determine the number of u32's in an array of unsigned longs. Suppress
>warning by adding parentheses.
>
>While looking at the above issue, noticed that the 'address' parameter
>to hugetlb_fault_mutex_hash is no longer used. So, remove it from the
>definition and all callers.
>
>No functional change.
>
>Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>

Reviewed-by: Davidlohr Bueso <dbueso@suse.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190919120703.ixuv2itnui5ofhhr%40linux-p48b.
