Return-Path: <clang-built-linux+bncBCT6537ZTEKRBX5ETWMAMGQEM3VR3MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB165A0E1B
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Aug 2022 12:43:44 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id v13-20020a05622a188d00b00343794bd1dasf15060395qtc.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Aug 2022 03:43:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661424223; cv=pass;
        d=google.com; s=arc-20160816;
        b=TNLBIwZmFvXYn/jfNlbE0DxgQi/lOzzp4Gy0wX5RsnkMGQB3s6SPvgq1BMuHfwrL5V
         jJ40Ulg+m7mFe1mexReIQMZPTMOBLeargxWyXf70oq3UJtCZz+SdJZmBrduFTb56xQsP
         EvDdEYQovJL51jRB+hil7xo5H8eiYT4t57cEZVVWJeDx4e4Ai32oRPfw5siKqCiaA3Ll
         taF8FLA4V1OWaJaUXvpnOFpDTA+uX78KOxu3UtX61BAhp29o/st6YpxFGCJwRT5SvhDt
         0sMKFhLN0vccgtkp7IQ/L7Dkz467wB9Fza22niMBlO1Wa34YTY4/ICRJGYo3OemHGMX+
         Atug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=hWYOtaeCYgheUt78KgBSJ0ACE2DVbYXp7NWnKlP+dDI=;
        b=fXDURPTEXiDBsRhWqvLindh7kShle3GnRKltxIGv70GVuASw42xv9AX7eA443vgtH+
         5+rb4BsuuDdcRoFzQucMOi8VH18sERcc8KKsRe3PjscfyjDijlkaa1ht73aQoGYyLqwy
         s0GZEJ+CxcQYTWdxqItRXooro+MV3WzUL68cBEalc4WIz4MqCM2fsrd4Png7zNjUH64F
         VHdo5pUMYimYMPTp4SUIs6bMnRMIhI3nMAD0zB+WWTLVHXqOaLY1SmlbtHATm/W09xWs
         Y/8lS8+PbscJKK8iCFrhfmNrjqObMfTC49t/0sS3FgwA+SoQB/gAKyWmAc79ga7XjT9k
         jA+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sQXkC4Y6;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc;
        bh=hWYOtaeCYgheUt78KgBSJ0ACE2DVbYXp7NWnKlP+dDI=;
        b=A+JR0xtlI0fDAiv3SDF6TVMvlnLZQNpbHP5N558U37y27Tewt91kdR267Oivc1tcUq
         QyTb/+ZPQHtgrj1RqzItxdD7hnpH+jQ1r1ajFPbEAD2pfzkZ0+KmCdLe2Q8CLwgwmaa0
         IPHs+RAG3cJ6DNmJ61vQnDutbSK16Th9TXlaCZPWjLp8DuNVXcVBiX9UfYLjEtN/rBON
         9Y8HMV0D8ZnCK4/4ZYtqIAeifMNzHhyhWkRz2a7q/VB4NmMbw/WVLUKhLMn8H0mH6vuM
         +PnUC8j9//gRnfunNaWN81Mbl+odjtcgf9O9+EdC7fubtn4REyOkVkMYTtAkBgLwhblV
         mDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc;
        bh=hWYOtaeCYgheUt78KgBSJ0ACE2DVbYXp7NWnKlP+dDI=;
        b=q/tWjJHrYHD+ghzvzc0dv3/vkzhGBkFtyFJqwShzxpGyQzY2YW2Cu7yCyXM+mxt1UE
         mXIB+4bq8lRbTFTnPu8D+v/LHYzJGktYKRt4WEkXA7WX4slVWQRENFgybkcUNImm75R2
         KyycD1LgAZMceAIln6pxfMWEXNKIhs1zyEP/XQbZY7wSMbjNJtBb8AvZKeqtdCBBL3Sp
         Jivgau0jzLGaCvNRH7k2O+p6HLuZERVfBGUJxuW49UsevfZEa00iTRbnVdn5EG9M8ZPQ
         pZNY0mBqt4jewHUGlCuKg2lyEWkhX3R/bRSGyfxsMF+xV1K/wMuQkz6kmadnsSxzowfD
         7qMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo1ZMMYCNjdyzcSKfZBbF2CcVZQpFrEBuHnknRmgn+vuqbbX/H89
	4YXS0584URpyoWakIqmlGcQ=
X-Google-Smtp-Source: AA6agR50YDP9FYaq2dnt4YsPe6QLzaqjZfoMpTCxTizNETPQDv3iffUKXvL2Clud/3EfjxaMzM5TZQ==
X-Received: by 2002:a05:622a:2c4:b0:343:7f18:c2ab with SMTP id a4-20020a05622a02c400b003437f18c2abmr2943876qtx.641.1661424223226;
        Thu, 25 Aug 2022 03:43:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ab13:0:b0:47b:3f72:4b4b with SMTP id h19-20020a0cab13000000b0047b3f724b4bls562273qvb.11.-pod-prod-gmail;
 Thu, 25 Aug 2022 03:43:42 -0700 (PDT)
X-Received: by 2002:ad4:4ead:0:b0:496:e5e4:a6b9 with SMTP id ed13-20020ad44ead000000b00496e5e4a6b9mr2780890qvb.18.1661424222759;
        Thu, 25 Aug 2022 03:43:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661424222; cv=none;
        d=google.com; s=arc-20160816;
        b=szO+W7MivOjogGEBq3O87B/M937Yqdcc8Z8jxlP2FRxXMMvCs60nPprk3hf6dRYTC1
         ROJjG8saKkZ0jD5dcHe2on5Xir2UT47oEf09R5Qvjg7WZ4KNygyZ+O+YyFvstvqgqq0Y
         LRr32HfWbuishl+sMJ1JbZxaFza0zMb/vLmXY6IL9CLyuKqNgKWG+8S3sJNI6zA6y+ez
         Oq3CGF2O8ozo/jVy7kONEq1sW5ESPisjnQM39sufq0H2uoD+gYyPFj2xvryJ9gi9uGBv
         c13xqE1s9C1YDAMHzeEP0Rn8agPdmusJbF5SwhOD28SsiIYdb56HE5ItJsTIJkJJgnBI
         NqFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=zrIRGklNoO2a5CD9cGT6cGI8Xi9o//UAgqinYGld0u0=;
        b=AhxHtFYhhVIe06f/YkbMi/nAh7u76EKh9c6eW8geAeGGy1S9ANngztA6adPJPunP7h
         PQXy8ZUP8IUeD2VPm0rEtEKEp0S34d5ZcDSiJ/DZVXnTTG157KX6lQUzukz/PNhMhznJ
         Y1sDbEu+CbO4MgwVgIhewRXQAoSbavq9KZAjwmm/45ZWJSwMDbulscsibq5ABksGEq+8
         UkzHF4bnHZnyL4mwDshVa4QQ6GR1kJReyiD1HL0qigwuAC7crpfj+FX46LfNEbdOnvDb
         B0Gw+pKuTweTeemAlcVw8mJVvVvj4lp7UUBFjOQLj3Hr0TLKHtxg0l5DtdZj6HBMYMXZ
         FwDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sQXkC4Y6;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id br18-20020a05622a1e1200b00344e41c5e4bsi96435qtb.5.2022.08.25.03.43.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 03:43:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Received: by mail-oi1-x22d.google.com with SMTP id r124so7188810oig.11
        for <clang-built-linux@googlegroups.com>; Thu, 25 Aug 2022 03:43:42 -0700 (PDT)
X-Received: by 2002:a05:6808:1242:b0:345:7e6b:961b with SMTP id
 o2-20020a056808124200b003457e6b961bmr1435273oiv.290.1661424222144; Thu, 25
 Aug 2022 03:43:42 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 25 Aug 2022 16:13:30 +0530
Message-ID: <CA+G9fYsHVdu0toduQqk6vsR8Z8mOVzZ9-_p3O5fjQ5mOpSxsDA@mail.gmail.com>
Subject: [next] x86: fs/hugetlbfs/inode.c:673:16: error: variable 'm_index' is
 uninitialized when used here [-Werror,-Wuninitialized]
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm <linux-mm@kvack.org>, 
	Andrew Morton <akpm@linux-foundation.org>, open list <linux-kernel@vger.kernel.org>, 
	regressions@lists.linux.dev, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Muchun Song <songmuchun@bytedance.com>, Andrea Arcangeli <aarcange@redhat.com>, 
	"Aneesh Kumar K.V" <aneesh.kumar@linux.vnet.ibm.com>, Axel Rasmussen <axelrasmussen@google.com>, 
	David Hildenbrand <david@redhat.com>, Davidlohr Bueso <dave@stgolabs.net>, 
	James Houghton <jthoughton@google.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Miaohe Lin <linmiaohe@huawei.com>, 
	Michal Hocko <mhocko@suse.com>, Mina Almasry <almasrymina@google.com>, 
	Naoya Horiguchi <naoya.horiguchi@linux.dev>, Pasha Tatashin <pasha.tatashin@soleen.com>, 
	Peter Xu <peterx@redhat.com>, Prakash Sangappa <prakash.sangappa@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=sQXkC4Y6;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

The x86_64 and i386 clang builds failed due to these warnings / errors
on Linux next-20220825.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

fs/hugetlbfs/inode.c:673:16: error: variable 'm_index' is
uninitialized when used here [-Werror,-Wuninitialized]
                                                m_start, m_index, truncate_op);
                                                         ^~~~~~~
fs/hugetlbfs/inode.c:651:26: note: initialize the variable 'm_index'
to silence this warning
        pgoff_t m_start, m_index;
                                ^
                                 = 0
1 error generated.
make[3]: *** [scripts/Makefile.build:250: fs/hugetlbfs/inode.o] Error 1
make[3]: Target '__build' not remade because of errors.
make[2]: *** [scripts/Makefile.build:525: fs/hugetlbfs] Error 2

Build link: https://builds.tuxbuild.com/2Dpvef6uVvzHMztbfQRmxJfPXZT/

Steps to reproduce:
-------------------
# To install tuxmake on your system globally:
# sudo pip3 install -U tuxmake

tuxmake --runtime podman --target-arch x86_64 --toolchain clang-14
--kconfig https://builds.tuxbuild.com/2Dpvef6uVvzHMztbfQRmxJfPXZT/config
LLVM=1 LLVM_IAS=1

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYsHVdu0toduQqk6vsR8Z8mOVzZ9-_p3O5fjQ5mOpSxsDA%40mail.gmail.com.
