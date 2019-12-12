Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX5MZLXQKGQEO7FSLEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C38FE11D714
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Dec 2019 20:34:56 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id t10sf1236552otc.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Dec 2019 11:34:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576179295; cv=pass;
        d=google.com; s=arc-20160816;
        b=VVi4khYzhR11AHJTMM2QjFUJGsdQJTWLOhuCp9tWxpsVO6co7dgftIFjmOsRW7rWU9
         TZ/DLdsw0cvdgqNJczUQOo5WZx2M64QtKmMWS5K7Z7l6Nbqd8FHnt9b0FKkzg9XGcEeJ
         WYyZzZFvcK8T5hF/H0Brn55YXRZS+NMUEOKdQSDgV66BoMZGzIzfjFttyhCgTqRcwUea
         fVhwj80dACXzyeAnM61JYqd6u3bXxYnsMeLpEw4m38qrPZc3XvFmGjcFgWOvjacZ1yYA
         H6H5Pj5DC8XZYt42JG/4rTuBzHTT0LweRSf1ayPKUTUTUu5ylohiZFq0sJVcHZEZ5/8G
         rlSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VmU/3A5vYe+gT53x3J3EVDx90f+ccPy5Q6IgHXRUCdM=;
        b=cp+R2H8pFdVl0189ITSOhB/vwijr8ZHOymrazG+kIRnn215YF4RKBnv2v+4kf9uIXu
         gUeNQjNk3bjVZn/0kjm9/m3kK43UwB17VfWJT8qJcdfFftxu+ZqnhagfUIeYCYSt11WC
         6y08vcstG3oP9EZBNte3rTOQhYuHp01Q2tf/rSf8lpEg3CuKV+z9/sy20WtzQglGajJ7
         JJTLO3vcgRxK50XwkiQDch8zdMbiXYmgCOfnCiLCcieepDhemhMvIroe4RfyOy71/pXc
         GvqW9/mPK3JHhVO9ts06wHBMBcCol8qGkCmX65m6ZaD6ZSx6mlUSJ28tOkFcraFIPa50
         XfSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FizTWvyU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmU/3A5vYe+gT53x3J3EVDx90f+ccPy5Q6IgHXRUCdM=;
        b=VXIZkepXI2ShtqfsECjKp5PcybwCkIWvE23SgNT2mDubxLUgQYNhXJ422G4NIZDUjz
         E/DyjiZTxp8GCrMBi9CrR0U+iEjEu/2jxWVGGelYRDdOGQtIJ0LQZTMM7SD5kJBBzoRP
         9eDL4mABYcDGq+PvccIB1cal2J1cjlOckDYHQMEobskhjIq8qUTyO/SYgL1+e035gSVn
         gX6CeoU8VE1CZjqMMdRpsNoyn14V6R6mj3mTIwKV6CKjzz5U7NnETV01vmLPsLppjjYG
         DBVtTLGInOurvdAxwL5vb+YDBjUlIE8txfc83L2lLXGgh2+mLeMhtbti9QE/VeouTcU0
         Qg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmU/3A5vYe+gT53x3J3EVDx90f+ccPy5Q6IgHXRUCdM=;
        b=bRgOMASj1xyFnD8h7lTtq5Z49qE5/DqXz3ws/bNJZLkuom+F143d6Flm5AYVLz9EO7
         73Xqzdh4GgLwQd5hRIJDjRYO/nN+N6aPe11X72lfO+XVuSPuPEVrqUvotQUliYY0uvVt
         FGbiZvg5n62CymbRTeCf8/tLzVeulhPn3acBn8sZo/iDNjLBVE3pD8OfVPUqirJ7Sr3d
         iwb8ISCv1yjgo8hzDcep9q/DnXAsHENvfokvZwYFJO+I+q7gYqAAz4EewlysbmgtQ+BQ
         9sujkPEyuJyRF3ox/6m5tasy5j8E1xLI3vhv1W5mRCJ8o0zWqaI4e3vlDR0bFIR8t4+1
         y/dA==
X-Gm-Message-State: APjAAAUSudVLuKLL33cNZ1o5FGwp/63ag2INDg7filJEcexUFctn3Rqs
	yMvAS7B+CeqCRl3eH4R46gc=
X-Google-Smtp-Source: APXvYqysBG+TkiAfx+llreJmbveYCBh0goAVma9L85UuqdlCuM1GllNg9giFZjbdPR9VZLHW3S5jAA==
X-Received: by 2002:a05:6830:591:: with SMTP id c17mr9526346oth.226.1576179295529;
        Thu, 12 Dec 2019 11:34:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf95:: with SMTP id f143ls889184oig.7.gmail; Thu, 12 Dec
 2019 11:34:55 -0800 (PST)
X-Received: by 2002:aca:1e13:: with SMTP id m19mr6294070oic.175.1576179295163;
        Thu, 12 Dec 2019 11:34:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576179295; cv=none;
        d=google.com; s=arc-20160816;
        b=C5Q9hqqARCmPwHQEwJbNss3H/16EdEOrJ7lLtEko+3iOLN+cXd4DANBRwP65msE0GZ
         xFnQIAFpc2w/ZjU2OSiYbI1Zp9AOpLK8suyZftb9fkiyUNk3ATq//jhnG7AMwAgirDNW
         H38xeUianllcIQMNELMpDnvof6PqwaF1pw5gimKq4SdlrecmEDKa1mj0wjPgQkJs8c5u
         nUPTDtK6VQtA5d2q6BGwQn6yoJ49VRyISj2kgBq6NIObrhwqZP//9Fop7h/DcSSK9vbQ
         /7nywAfxRayECVzoqomS5r08aue9rqBuBhEMhTU1i1Ce3aVMl/+hnt2+8hl9o5TGDXaN
         Z9AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IFlryiLHUodkFUHyul9JRSETVpiYHsZY3o54mIdwFns=;
        b=Dox0KPkZU7O1s18NqlxOIubNkkVx6qc8Uvm48B9TUIBM0VFSC/EUixdMr3An+FUNVI
         bfrJYOaEIBUXlTF9945fNCZjGXxLnwg0HEkzIdRq+SmB4vAXwRg1nuzVhUzuQH2Ws/B5
         fws1TbRIq4H4H7+kZItorqHDRxLU0vyIBejVS+8mCGJ91UgO4PR51mqw+6AB70ZrQijY
         tn1pai2nwFmSMcSymVA5z1XBluhrhubwp0NYTYOH7JxMV63m7QBv8dyDIH/Zs2Sdp7cF
         KgFSsrMrMvRFnAi6I55v3m+NvKFU+t7vV1MXBAFoXGQpnA42JEfADtNFkjImtzS5GEOh
         WXbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FizTWvyU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id l1si333503otn.1.2019.12.12.11.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 11:34:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id x17so1090745pln.1
        for <clang-built-linux@googlegroups.com>; Thu, 12 Dec 2019 11:34:55 -0800 (PST)
X-Received: by 2002:a17:902:8ec8:: with SMTP id x8mr10932263plo.119.1576179293980;
 Thu, 12 Dec 2019 11:34:53 -0800 (PST)
MIME-Version: 1.0
References: <20191211192252.35024-1-natechancellor@gmail.com>
In-Reply-To: <20191211192252.35024-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Dec 2019 11:34:42 -0800
Message-ID: <CAKwvOdmQp+Rjgh49kbTp1ocLCjv4SUACEO4+tX5vz4stX-pPpg@mail.gmail.com>
Subject: Re: [PATCH] ath11k: Remove unnecessary enum scan_priority
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, ath11k@lists.infradead.org, 
	linux-wireless@vger.kernel.org, Network Development <netdev@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FizTWvyU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Dec 11, 2019 at 11:23 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/net/wireless/ath/ath11k/wmi.c:1827:23: warning: implicit
> conversion from enumeration type 'enum wmi_scan_priority' to different
> enumeration type 'enum scan_priority' [-Wenum-conversion]
>         arg->scan_priority = WMI_SCAN_PRIORITY_LOW;
>                            ~ ^~~~~~~~~~~~~~~~~~~~~
> 1 warning generated.
>
> wmi_scan_priority and scan_priority have the same values but the wmi one
> has WMI prefixed to the names. Since that enum is already being used,
> get rid of scan_priority and switch its one use to wmi_scan_priority to
> fix this warning.
>
> Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
> Link: https://github.com/ClangBuiltLinux/linux/issues/808
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Further, it looks like the member `scan_priority` in `struct
wmi_start_scan_arg` and `struct wmi_start_scan_cmd` should probably
use `enum wmi_scan_priority`, rather than `u32`.  Also, I don't know
if the more concisely named enum is preferable?  Either way, thanks
for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/net/wireless/ath/ath11k/wmi.h | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath11k/wmi.h b/drivers/net/wireless/ath/ath11k/wmi.h
> index 4a518d406bc5..756101656391 100644
> --- a/drivers/net/wireless/ath/ath11k/wmi.h
> +++ b/drivers/net/wireless/ath/ath11k/wmi.h
> @@ -2896,15 +2896,6 @@ struct wmi_bcn_offload_ctrl_cmd {
>         u32 bcn_ctrl_op;
>  } __packed;
>
> -enum scan_priority {
> -       SCAN_PRIORITY_VERY_LOW,
> -       SCAN_PRIORITY_LOW,
> -       SCAN_PRIORITY_MEDIUM,
> -       SCAN_PRIORITY_HIGH,
> -       SCAN_PRIORITY_VERY_HIGH,
> -       SCAN_PRIORITY_COUNT,
> -};
> -
>  enum scan_dwelltime_adaptive_mode {
>         SCAN_DWELL_MODE_DEFAULT = 0,
>         SCAN_DWELL_MODE_CONSERVATIVE = 1,
> @@ -3056,7 +3047,7 @@ struct scan_req_params {
>         u32 scan_req_id;
>         u32 vdev_id;
>         u32 pdev_id;
> -       enum scan_priority scan_priority;
> +       enum wmi_scan_priority scan_priority;
>         union {
>                 struct {
>                         u32 scan_ev_started:1,
> --
> 2.24.0
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmQp%2BRjgh49kbTp1ocLCjv4SUACEO4%2BtX5vz4stX-pPpg%40mail.gmail.com.
