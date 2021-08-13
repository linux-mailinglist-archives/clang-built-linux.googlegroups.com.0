Return-Path: <clang-built-linux+bncBDY57XFCRMIBBTW626EAMGQESFYG7QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D1C3EAF12
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 06:04:32 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id e12-20020a67fb4c0000b02902bcb9baa658sf1158198vsr.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 21:04:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628827471; cv=pass;
        d=google.com; s=arc-20160816;
        b=PSwtnX07xe5QzPtTJ4R+HSa+QRvXqiQZJuAcKQnffQzZDjOOnWde689XzMiciXtVoZ
         kz7XWK95nOwzhtzvwzeiR5JOuwvNrUqJIakyEiJ/whNTGNI2x4UA2M7tQokB9Ba/pro4
         TgB1aifDWQPP97yCV7t5KojYIH8VM/seUfiuw26BhdewCWyfsyB5wyLGg+l61/zdA1pW
         R5upHI9v8qgpV6hULaNbzDUkFL/TWDnAnfDjQcveGoi99hCQA8sjHLWBOorK8nzagrRp
         OKqhKOZARI+CUH9xgseFLlzNW6dUJ4+hZe8PVeK6Exkzc+RuGQDy2oq8LkziTAYARpbf
         2aqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=02pjR19A2bDnNGW+LQTXP8u7/votP9lQ1iDpcO8+GZE=;
        b=XmZdjYUHBh8GDcg5/Y67ZlfsPTVemkS7kpPXfA42vErwdFpQZ03yxgrpgu9e3R45kM
         Yj+Tt+UZK+aMzx4wNl3RsfBpgDMY8RSG1RcPdfkd8s/EU3rZEFlsBPfMvgVy9GBUeNPL
         Tih/O9Fz8kilhdnSmKThKox0ObLdyyAdx1v5QrY2paDxRcx0mGA9hMRshe0NwyhrzpoK
         2v8+drHHmtYKI7QfP0DQjT6ZhAX50rVeNaZhanUjfeYQGXUHb1Raf7+GNUKcSTYmPASu
         LzRhpVspaWxvRO3lP61M61/SWJGuGHvuJzfcCCs3iwPBJi/cZldhqtkZyzyJzGSWNUCS
         XJxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JWgRuv5C;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=02pjR19A2bDnNGW+LQTXP8u7/votP9lQ1iDpcO8+GZE=;
        b=G28yThUycegHTQKuiOf7l8RXEVHs3kolfd6HAQXs3Ed+ACjhBNcN7P2XsR7ryffeZD
         9ES9I9vftsOit6ZIoOMk7foT8jEX0IdR2B4sNkhZIqSRwA/H9tfn4cCqOOBl+ch/B4Fg
         eBv25s1ZYT3m4y5JIW/TfWh5GzPQzov+/4osgva+F095qjWicUp2bUOq5rseeR/tes7f
         BJebMgplV88Bj07AQ8FK9TCFmR4sgqhxH3XMGbi2oStIIEIb/DpC2xsdIcEz2QE6/O2D
         8nS5MD7y0RmK5BUvHyo3UOby1qiPVxyU5/GAu0fTaUihHVh4brtOn3mVTIfZg0WBxXUd
         0wfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=02pjR19A2bDnNGW+LQTXP8u7/votP9lQ1iDpcO8+GZE=;
        b=TThAc1bO/ns3XdTSwlWfs1Bj8whbWycS8X31oPTDGdfxjzLEgbCioLK9l6zUW2xvM7
         r9VX1d0epyYB0md6DmfKGhL6qNd7UWN0vd2Ub0bkj0yhRrYFd9DxhKOha6EGYSeba8W7
         3LGxG4p3+0RweiV08KZnb+sT+uDdYriS1vvHT0WpemMKn5R30fzvEb3k9tnTfyX1qyHx
         5rwBoTMUAb6gs1P/dvuIjrC637xGpAHnvTjaTieFwaLXyhhKLjZzoew6XtBQ34oCHGH8
         OhjKS4oWTIm72AguBsQrhTqp4bZyt/rsMlkxiuVBFNvFk6lW2Y5D4ShZn0YTNLtKQ0Hk
         zMrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303IzjD5siATlXb7DQgqXHojVwqUJyutQ0z7rH86J6lwsR+R+rY
	fzc5HVGt3IZcInm18oCBhL4=
X-Google-Smtp-Source: ABdhPJwGmK0iE4czZtKaH1jIGnJe5k4mWQ4mzbhyeMWL9SHaINjjGOYsriGEDqUPzGqr4FF7N4UXxA==
X-Received: by 2002:a67:7347:: with SMTP id o68mr274458vsc.36.1628827471060;
        Thu, 12 Aug 2021 21:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c89a:: with SMTP id v26ls47398vsk.0.gmail; Thu, 12 Aug
 2021 21:04:30 -0700 (PDT)
X-Received: by 2002:a67:f68e:: with SMTP id n14mr177308vso.39.1628827470482;
        Thu, 12 Aug 2021 21:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628827470; cv=none;
        d=google.com; s=arc-20160816;
        b=M7Wd30XJaeeBRdVom52CZn9oNIT+Go6OIVfbgIHcNylhb48aSpdJlBSWoFCYuvBduQ
         +if7LyyyEJNzXnajfMpf1e/05hs+eZXJuk180mGP22+Oo8VmHbU1LfGYz6bner1X6umR
         VFI1NPY0SlKZUUXI2f66GSyRY4rVX8nOG7DSMbeupVBOHDPg47x2np6LnVFhzBw0WuCh
         WjRcBrqM2biZqkJMrwiVz0ostGGzB3hVn0qUuqttENfU/7zoBqb9Qs2RRkAG5VyTD9ZB
         6Z8F5YVDPbvGxzD/hY7vGvR6RmrNrXICr5yiRaelaMAfqP4mFFQ8QiFI5mquZ7npiTqJ
         Uf/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=aNpDvhg292I6Q+iU08EbnuS4gP7PbGFPB+YOq4vzeiI=;
        b=jG7JautXm6B9KOrq0W1K5ne4fQfQm64/6aplsXqpCGRYkT4mhD68Hq4AcKlZBx2scC
         0njzlY4B/1JoDOXGAcDeLFy2RfJobU9H9CBJA0Sl+5oqxP3CGE2xBQcP3hjO2dMWM8ld
         +16x/djVywZUlFOk6iNM9CIGWDE5o8qDI6VFQnWNBS0Z5G20aW/22f1/bc2JSUqpN90n
         yyth1nlQ7ELSp+uXFVkB8vkkGrl9dZXBexcdgry0nuOEYU551PSmktVOqls29dawUCaX
         RNOMuigPbuyAJ5wsZKV47N2CPTN3qaObRJPOhC/0QVH4ryrVfFGkZa5507wshvPc8gow
         wVMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JWgRuv5C;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id k21si15171vko.3.2021.08.12.21.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 21:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-148-HXr-N7nNNeqf7c2UbJueNA-1; Fri, 13 Aug 2021 00:04:26 -0400
X-MC-Unique: HXr-N7nNNeqf7c2UbJueNA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2A352E7A
	for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 04:04:25 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F176160939;
	Fri, 13 Aug 2021 04:04:21 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, f8e6dfc6)
Date: Fri, 13 Aug 2021 04:04:21 -0000
Message-ID: <cki.A4E855ABD3.YVXSTJVP7J@redhat.com>
X-Gitlab-Pipeline-ID: 352585112
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/352585112?=
X-DataWarehouse-Checkout-IID: 17706
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3214809067425376587=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JWgRuv5C;
       spf=pass (google.com: domain of cki-project@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
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

--===============3214809067425376587==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: f8e6dfc64f61 - Merge tag 'net-5.14-rc6' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/13/352585112

We attempted to compile the kernel for multiple architectures, but the compile
failed on one or more architectures:

             s390x: FAILED (see build-s390x.log.xz attachment)

We hope that these logs can help you find the problem quickly. For the full
detail on our testing procedures, please scroll to the bottom of this message.

Please reply to this email if you have any questions about the tests that we
ran or if you have any suggestions on how to make future tests more effective.

        ,-.   ,-.
       ( C ) ( K )  Continuous
        `-',-.`-'   Kernel
          ( I )     Integration
           `-'
______________________________________________________________________________

Compile testing
---------------

We compiled the kernel for 4 architectures:

    aarch64:
      make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg

    ppc64le:
      make options: make CC=clang -j24 INSTALL_MOD_STRIP=1 targz-pkg

    s390x:

    x86_64:
      make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg


We built the following selftests:

  x86_64:
      net: OK
      bpf: fail
      install and packaging: OK

You can find the full log (build-selftests.log) in the artifact storage above.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.A4E855ABD3.YVXSTJVP7J%40redhat.com.

--===============3214809067425376587==
Content-Type: application/x-xz
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="build-s390x.log.xz"
MIME-Version: 1.0

/Td6WFoAAATm1rRGAgAhARYAAAB0L+Wj4ALpAS1dABBhHJ5VZcrATD5900+1yBZ1hAK8kjdaup6u
qqQD0BeHnpNINE9JghAhltvtVA6oObhw9qMcxarTf0Mrii3CfdkPxtTRHb6s5t4yA6ObEisTt1Sg
QOoAcF4eEMR1X/td4pdhVXTq8eiIzJCGOdQqLQl1OKtZMKuFZf51uyrhhAM+VWsUoY8qU9zgrT/R
ZqxmAzBZFdk6i5s9fKYtfIg+ps7QBWbeSvTWAjBQBWLaGYRMJTXJG5OEYhlnaXQDO0YF/wFD3RM6
hyfIviEXOy0gAolwR7p3aeUQJ7rabSbuvufyC7C5No+fenRAoRHdPkAxjbDBQtv4gwJ7CeCqPdOJ
K74nrgAEXERsHzRNkLvR4OSglnoh10otfppEhJqFEKIYiUwi5HfBASJou0hRRAAAAAAAu3XhCy2F
iGUAAckC6gUAAHarezCxxGf7AgAAAAAEWVo=
--===============3214809067425376587==--

