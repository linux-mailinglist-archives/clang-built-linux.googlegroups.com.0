Return-Path: <clang-built-linux+bncBDY57XFCRMIBBXHB42EAMGQEBINYXTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 194B03ECC15
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 02:27:10 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id z20-20020a9d65d40000b02905173d569315sf4476809oth.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 17:27:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629073628; cv=pass;
        d=google.com; s=arc-20160816;
        b=VmTW0AfKlzVKimtvi7sZYiSL/s8qHZz3dVmZgMKQJdMNT3UHDwcezcigRxPH/WRPAG
         +UNShxWzGTJb5TfLx15eS9K/0MWCmNOkmqt6gaZp2ZU1AQgIGy2G7UBHpd4/pC249IS8
         ex11rfAk83I09WMz5tBGWdc0aDITTFYGwoF4jq5VFC19a9XK/gyMAKauNxOVi+nndS50
         iE1J9rkDkclSaFc7cstNVEzAh1XkTNsvb6aOvq81CpcA5jp9aBoI1IJ1WFL3Zx5s+9xj
         XUmS9+jiVKHnrAtduYMmzxzVQv4JWhQ7NPpSN7hWUX7pNyMVzESUKvJie2RE+yLPDqHJ
         RgSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=Y6gtrqzsXRvPqZH1nrpCOi8FEKLI7b69zuHiQIDsF5I=;
        b=mxsM6Ib7FErLSzF+5a/WZqfTQkHVAqvVZgyKza7GqhLovUXZENyk8fpevPZQ5E8B4t
         3gtjU9rGfAq5mlCZ7FetbWio1JT8dKgvwOJKNykfZPJMb8rzkLBrOCtVW3YmGcw7y7aQ
         ynJ4UfwoP93oHx5i7lu1lc1aeGyGykmLDHy9a3ESujWULWbihyy/9Ti8PLKJS3nF1GdL
         +Dij0MAr6BsO1TncjOpDAM/u6jSdNGNhoqKJdGFmOkMsY3ir6WBwtiekuF247alryrxt
         FEMNs2aJfnbv49trFOFf9zStg7xxq5WMt9OXC9Odhzqm3Cdcw67WHy+e6Uq7JekekddJ
         2Z6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T5QgZSoM;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y6gtrqzsXRvPqZH1nrpCOi8FEKLI7b69zuHiQIDsF5I=;
        b=XQObMLlZTyrijNeoPqJ9ufHCjbF5UB/IwIqpZVDyzI24BkGM8UlUwuAfCyDnCn7fUC
         K6HDbjf5Y4FmExVJk/eQLpp/3BQJ+I8bYcSosfE77pHkoOQa3JYdPd4ECY69miriPa6i
         dPrYMBV8U6YfZfuZ83Uw27gdHCCpAtzYM96+Ju9v07g+LkE7kwPrfPsFQT51O/aZOHW8
         jKYw2Jav5VWNNrnVab6vhG+a7r/hKWXebTsTAGpXYn/XLU9a3FPHwMEZOvYf4AUu3LOJ
         A89y7ZA3NOd07vTOXDeL6p0/XAj3cXDRd+49ykBfOfzq7ETNyazkPzQM8icIjBmusoVZ
         85ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y6gtrqzsXRvPqZH1nrpCOi8FEKLI7b69zuHiQIDsF5I=;
        b=KL/x587gLJ1Tc+FTZWsPRkBi3pEKibdkO1XM4QMi6fugiavHALG2U3HhjTJM8wIi0N
         BRT3NJooKpig4FpqYo9Zx2Unhe59JK4TK1w02gTYLrkX147OyxFewAW4izkY34hu0jku
         Eytb2cXpteKf+3oZZBiAox0Wci7RKJYaFwM93eIX9cogpz+TU6VbiARRJq0v2d9pALmQ
         X5/JAXPQ+Ym0qq4wzA4e0LxeF5ekMEq2GSo3qQACoQiXS3YGO5PH6VJYCjjazyt96COk
         KV7STNbslgF1FLYFeksbPe8+fQq63yLT3nrKYimEl1BEpgMAibcsOYRCb3yvH0NS0LKa
         o+0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310t/FilR6d1GZaK+CCJoF0wUHeIELZFa8IoxrxN3Hm75evntVU
	PO8xN8PUEvbdbao2sfXk8r0=
X-Google-Smtp-Source: ABdhPJxbWem8X83YVMeBhpR0X0SEX0h7KAFJtCb9arGk3Ym16oZDLz9RISlTbjt7TvwDU1/3KZMXLg==
X-Received: by 2002:a05:6830:832:: with SMTP id t18mr10656114ots.96.1629073628621;
        Sun, 15 Aug 2021 17:27:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:201d:: with SMTP id q29ls1680679oiw.7.gmail; Sun,
 15 Aug 2021 17:27:08 -0700 (PDT)
X-Received: by 2002:aca:eb0f:: with SMTP id j15mr9541184oih.7.1629073628231;
        Sun, 15 Aug 2021 17:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629073628; cv=none;
        d=google.com; s=arc-20160816;
        b=Tt42vQHzy7QnHHWrtyl7nZVOFEcYnSAfqdss6z/SQJFn/t9WQHkkOHgc+xDrB3cyGw
         rts9YSbwOjO9M4cwnjzGH5iqRw5eLPZHc0ut6JMs6DJVtrXe6c/8XHq5uL/qsJCKCv90
         K0PI2W+q8K96UXBPhjZtHyq+nrE3WkULORqM8WkZ4xen1Xdw5Jx9eMYuGv5xxdBoOC3S
         bjCKjinSj/CX3/jwm40xdyRtbyLr8jeuSY/DqDsZGfvOtVapSPJ0xIoGEaYivw0iS6CZ
         vkppx91/sPX2Seo8jWq7sfJiMGifPwaQRuSooLcJOxwEENrlZUVr17B8eavOYMIMSDXv
         Izbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=ra0KGKPf6UCtQnjPDvBWQFvmnRILMNYlI9YpJrjzAV8=;
        b=EJZGOBLFYO05ehtAQBe2tPgmuJpRzw2hJjuJhUCpHx6MQe7RD1PYr8TXUSUkGSQ5zI
         3k8r+JfeKgVcg27Qw86WI3589ewcbbeepyEWrWQbxot3mACCUgzVkK6M1EhjNqUHfoK6
         R+qSDy/2RJix7tMIXOPsw1jRLE119iHsk2TMSCt7kiYPwq5uCh+EpwidgGi/0LOihAs0
         2raPeOQMzi7jdC959VVTXjzondAzjaNToLrd2zxOl7XB/DWD/pI9a57HpUZdH6UzNe4F
         bWsaBkk9nmfqEXgdkSsaK2sbqaRg0WsK1L1MNVMJjEtOtT/uj2GcUH83a4WphNKdGCH6
         9K+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T5QgZSoM;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id j26si656930ooj.0.2021.08.15.17.27.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Aug 2021 17:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-uSIIuYLNMo6jpTrqTIJ_Ew-1; Sun, 15 Aug 2021 20:27:04 -0400
X-MC-Unique: uSIIuYLNMo6jpTrqTIJ_Ew-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CBBB6189CD01
	for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 00:27:03 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 383CC5C23A;
	Mon, 16 Aug 2021 00:27:00 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 7c60610d)
Date: Mon, 16 Aug 2021 00:26:58 -0000
Message-ID: <cki.80AAD26DB6.VOS04IUTWO@redhat.com>
X-Gitlab-Pipeline-ID: 353573551
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/353573551?=
X-DataWarehouse-Checkout-IID: 17783
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6426945298083895488=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=T5QgZSoM;
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

--===============6426945298083895488==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 7c60610d4767 - Linux 5.14-rc6

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/15/353573551

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.80AAD26DB6.VOS04IUTWO%40redhat.com.

--===============6426945298083895488==
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
--===============6426945298083895488==--

