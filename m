Return-Path: <clang-built-linux+bncBCQPF57GUQHBBGEQ7GRAMGQEEOP6HGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDD97009F5
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 May 2023 16:07:22 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id a1e0cc1a2514c-7838140fe06sf237905241.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 May 2023 07:07:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683900441; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bse6/90oWWVp/Mmy1ydit4l1qlcitbKTrPPFjHP3L2FiQWLRoUd5Vb/OdYiX/4lePv
         LKeYIbFnR2YyI1Cgh7W3+nr6OE/2TzwIUelzsYrxg8inpTN6OX8i197bA2TlGNd2xmsg
         8ADqxRnVqMApwb09MYWanQjzcAWPVQx+OeDCrb9i0p/gHRtUHwh69sC4b11HfnWMDFwB
         +NGsdJX3cOFMAMSFNXyA78Gf+tiq40o38JAYpZTuK6xGq8kLAvHIDrpl8hLTf5elJ7/f
         oIX6QpemzZWAoOlON1MkQ3P2YaPzc+AeMgSYCyNgNXBNtRe2qalW+baAhS1iCQK5U1ki
         fRuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=RkYn+Z5YQnUjXSKV0+jHV6GT2nSRTsSathTr2rC1fJQ=;
        b=QHU6eZlbGWJu+I8MQhrrQ6/Kofouw+xTsXZNTos6eCE97XnuyabYCb1yAIDRMqBYLv
         duR39geSChlcKhGE937Cn/81wl2gvheBn54xkbT3uIY29V2G4zQ78WyM+XhRe4VDjw/Q
         1IhAYXtgJlwDIF1cbV+5AzZ2lANGGjEtx/kKwjALQdWxqOpch/I/DxEbg6aouUze0gD6
         Oyr/e8Xm/viSrufA5F3+je0YCAgyfs1JdPPoP7+U8d2Mw9Ttoq57GEyFBRuQ2ozR/vDW
         67AdwQTBM87QmLIocsVTa0XjYTVFuVJR2lLF/ZltQWoTZV9X8AUT1CNz9wAjVV1gbA+O
         paPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3f0hezakbaeo4abwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3F0heZAkbAEo4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683900441; x=1686492441;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:in-reply-to:date
         :mime-version:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=RkYn+Z5YQnUjXSKV0+jHV6GT2nSRTsSathTr2rC1fJQ=;
        b=gWGmvh4QowQz217anKrAKi6sdrpOAWP2/1eXgqEudjkEpHO7FzfobAqCBo1kiGazKz
         bYAj2Bwk0tSrjzW+Z1hIy/rxsqr9nCgVchjgfnCD2tRZ1l+aIVp+qYbykt+LI7muaQGa
         DvQUZ18wflFqoXbVyK5UvuJmLLDugfQRJaeqaOBXQN223C8ndeT7Au7XGMGwHq/Jr0Gn
         CLGUhsFifQjUBjkjT2Z0iRzNdRc8FOhrt+9fF0NIObT6X/tuUlLiHqPZKBVc0msh3lyJ
         2wFIUdl5GMSd8e1ijsxxT7v4LTvZkzmy+VFzrXj3f3Qd0hGxfgCQ1NRxw2eMKedCpf5p
         yh8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683900441; x=1686492441;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:in-reply-to:date:mime-version:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RkYn+Z5YQnUjXSKV0+jHV6GT2nSRTsSathTr2rC1fJQ=;
        b=XuC8ViL3zbVXyPK4QFCDABStfD2dOFYfeHe4IM0YdzzNhx4gJn6Lx/Nvw9khdl1S3R
         qGyAu/3u8UYbrni1hoaVmtLOElGh9am5ldM8ZPd0T9yvwQl6WqYSSgisDmysHnE+cmtP
         QUvGUwtePg+sR3yjGEiz+6ZNrL1gaOO8bFu5S8+096J7ymiJCAgDK1QrLl3NAeq23dxk
         UUw07Zb4UMNyiz8r9p47no5a7tw8kE9ahb7sDSQtIIQWDZ7wOyUZKg+1QAZ4QQhJjAZf
         I4SQrS3JL1dbuWY+7E1NWgX+n2ZFX6ItGe5zFp5poqT+sM1CEM7Wei5uCgX56MpUiK9L
         8yKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AC+VfDxmXR0PBcO9TUXsknheylH0VZt548alhQFd2hiLiN72eDu2Gb5r
	7EnT8Tq+nhm3RmaN5AgppBw=
X-Google-Smtp-Source: ACHHUZ6Z4wQAEdsaf+hJKMMAxyHj+lITNbJXdVkIBKp/Ji+JrYTQXj37baKnnT7dIZycSN5+vzeIKA==
X-Received: by 2002:a9f:3319:0:b0:77d:3fee:2a11 with SMTP id o25-20020a9f3319000000b0077d3fee2a11mr11999422uab.2.1683900440791;
        Fri, 12 May 2023 07:07:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:7f0e:0:b0:446:c491:7048 with SMTP id o14-20020a1f7f0e000000b00446c4917048ls2642552vki.1.-pod-prod-gmail;
 Fri, 12 May 2023 07:07:20 -0700 (PDT)
X-Received: by 2002:a1f:c905:0:b0:43f:c280:c10b with SMTP id z5-20020a1fc905000000b0043fc280c10bmr10058406vkf.7.1683900440053;
        Fri, 12 May 2023 07:07:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683900440; cv=none;
        d=google.com; s=arc-20160816;
        b=g9dM995hpuLWoeFsr53JySuYuWL+3rXre9m/dONYkyC23pqUrhZdSnCCXXFSD2NZxv
         uXdDYHmVYmQy+KI2vu9XT5gWlCkj7NmAnbk90Vhia2vuMKG6h9jaCuRvcXtT4FhBRJmh
         yywhmsSe4gX1tlK7ODKCpvbWO9ANye9/Wv0scw0DiZ1cVRNLej+7Uoim3RUHAS3QPdqb
         TKSaAhLAUytfnXK3nXMZixeLsOi4gLxn3g3WjLjVHrC/VSKnixJ24i/iVO1ksYzGB27B
         fQVuhVLPRAmZVMYdPOOKr2Z6nrKPV2buwWlFKzMcKS6IOikItEuIDJjnbqERnTmWg73Y
         PeuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=jMsA1OvUqk2tsx55m7tIfaPeJf529B0QdbQS7E31h+k=;
        b=qCHt0e2PYY9MBfrl3ox03xr6ctYzC79drAARNCzYFO1DbwNZuHF7dNhhZKmt3c6xXu
         svKhv+nFUAzWKzLSDYljEBxQ0X/vS7r4QSSSRZW3EH05gh2wRUrhu0q2NE+7cOW2nDQZ
         vV8TpiPgoatIE7sCPYGamsM2UClaNzmf61JXh5IrZZwI/U0ZeZC/TmDZjEf6oCjnTxQi
         6JASiNZxlAg6k9oD+RmfKABcgGy+AibN/mb0HtYWFZxNBmwgyviIRifUWCqFIMrQJ2wC
         ysmR13alM3VRt3PmvWFP1o0tcsqEbawh7HmWbfT7UtTy0YdipnZ4f2ZxtMSCd8J9rflR
         YEKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3f0hezakbaeo4abwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3F0heZAkbAEo4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com. [209.85.166.199])
        by gmr-mx.google.com with ESMTPS id y6-20020ac5c806000000b0045391f84a1esi183247vkl.5.2023.05.12.07.07.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 07:07:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3f0hezakbaeo4abwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) client-ip=209.85.166.199;
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-331581c2b13so147556875ab.2
        for <clang-built-linux@googlegroups.com>; Fri, 12 May 2023 07:07:20 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a02:860e:0:b0:40f:7382:e4aa with SMTP id
 e14-20020a02860e000000b0040f7382e4aamr6776856jai.2.1683900439423; Fri, 12 May
 2023 07:07:19 -0700 (PDT)
Date: Fri, 12 May 2023 07:07:19 -0700
In-Reply-To: <000000000000ea3c3105ef377a12@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000877b2c05fb7f9fd4@google.com>
Subject: Re: [syzbot] [ntfs3?] KASAN: slab-out-of-bounds Read in ntfs_listxattr
From: syzbot <syzbot+9fcea5ef6dc4dc72d334@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, 
	clang-built-linux@googlegroups.com, dvyukov@google.com, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	llvm@lists.linux.dev, nathan@kernel.org, ndesaulniers@google.com, 
	ntfs3@lists.linux.dev, syzkaller-bugs@googlegroups.com, trix@redhat.com, 
	zengheng4@huawei.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3f0hezakbaeo4abwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender) smtp.mailfrom=3F0heZAkbAEo4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
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

syzbot has bisected this issue to:

commit 6e5be40d32fb1907285277c02e74493ed43d77fe
Author: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Date:   Fri Aug 13 14:21:30 2021 +0000

    fs/ntfs3: Add NTFS3 in fs/Kconfig and fs/Makefile

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1587a32a280000
start commit:   8ed710da2873 Merge tag 'arm64-fixes' of git://git.kernel.o..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1787a32a280000
console output: https://syzkaller.appspot.com/x/log.txt?x=1387a32a280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b83f3e90d74765ea
dashboard link: https://syzkaller.appspot.com/bug?extid=9fcea5ef6dc4dc72d334
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17e7ec29880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11829e23880000

Reported-by: syzbot+9fcea5ef6dc4dc72d334@syzkaller.appspotmail.com
Fixes: 6e5be40d32fb ("fs/ntfs3: Add NTFS3 in fs/Kconfig and fs/Makefile")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000877b2c05fb7f9fd4%40google.com.
